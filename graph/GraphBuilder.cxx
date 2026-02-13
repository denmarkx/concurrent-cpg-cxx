#include "GraphBuilder.h"
#include "GraphManager.h"
#include "APIHelper.h"
#include "Debug.h"

#include "Node.h"
#include <stdexcept>
#include <tuple>
#include <vector>
#include <sstream>

GraphBuilder::GraphBuilder(const std::string &username, const std::string &password) {
    neo4j_client_init();

    neo4j_config_t* config = neo4j_new_config();
    neo4j_config_set_username(config, username.c_str());
    neo4j_config_set_password(config, password.c_str());
    conn = neo4j_connect(
        "bolt://localhost:7687",
        config,
        NEO4J_INSECURE
    );
    if (conn == nullptr) {
        std::cerr << "Failed to connect to Neo4j.\n";
    }
    neo4j_config_free(config);
}

GraphBuilder::~GraphBuilder() {
    if (conn != nullptr) neo4j_close(conn);
    neo4j_client_cleanup();
};

void GraphBuilder::persistAll() {
    if (conn == nullptr) return;
    clear();
    createIndex();

    std::vector<Node*> nodes = GraphManager::get()->getNodes();
    size_t numBatches = (nodes.size() + batchSize - 1) / batchSize;

    for (size_t batch = 0; batch < numBatches; batch++) {
        size_t start = batch * batchSize;
        size_t end = std::min(start + batchSize, nodes.size());

        std::ostringstream batchData;
        batchData << "[";

        for (size_t i = start; i < end; i++) {
            if (i > start) batchData << ",";
            auto labels = nodes[i]->getLabels();
            auto properties = nodes[i]->getProperties();

            batchData << "{id: '" << nodes[i]->getId() << "', ";
            batchData << "label: [";
            for (size_t j = 0; j < labels.size(); j++) {
                batchData << "'" << labels[j] << "'";
                if (j != (labels.size()-1)) {
                    batchData << ", ";
                }
            }
            batchData << "], ";
            size_t propSize = 0;
            for (auto &[k, v] : properties) {
                batchData << Util::parseNeo4jKey(k) << ": '" << v << "', ";
                propSize++;
            }
            batchData << "name: '" << nodes[i]->getName() << "'}";
        }
        batchData << "]";

        std::string cypher =
            "UNWIND " + batchData.str() +  " AS row "
            "CALL apoc.create.node(row.label, apoc.map.removeKey(row, 'label')) "
            "YIELD node "
            "RETURN node";
        LOG_NEO4J(cypher);
        execute(cypher);
    }

    std::vector<std::tuple<std::string, std::string, std::string>> rels;
    for (auto* node : nodes) {
        auto edges = node->getEdges();
        for (const auto& [type, end] : edges) {
            if (end == nullptr) continue;
            rels.push_back({std::to_string(node->getId()), type, std::to_string(end->getId())});
        }
    }

    size_t numEdgeBatches = (rels.size() + batchSize - 1) / batchSize;
    for (size_t batch = 0; batch < numEdgeBatches; batch++) {
        size_t start = batch * batchSize;
        size_t end = std::min(start + batchSize, rels.size());

        std::ostringstream batchData;
        batchData << "[";

        for (size_t i = start; i < end; i++) {
            if (i > start) batchData << ",";
            const auto& [fromId, type, toId] = rels[i];
            batchData << "{from:'" << fromId << "',type:'" << type << "',to:'" << toId << "'}";
        }
        batchData << "]";

        std::string cypher = 
            "UNWIND " + batchData.str() + " AS row "
            "MATCH (a {id: row.from}), (b {id: row.to}) "
            "CALL apoc.create.relationship(a, row.type, {}, b) YIELD rel "
            "RETURN count(rel)";
        LOG_NEO4J(cypher);
        execute(cypher);
    }
}

void GraphBuilder::createIndex() {
    execute("CREATE INDEX IF NOT EXISTS FOR (n) ON (n.id)");
}

void GraphBuilder::clear() {
    execute("MATCH (n) DETACH DELETE n");
}

void GraphBuilder::execute(const std::string &query) {
    neo4j_result_stream_t* results = neo4j_run(conn, query.c_str(), neo4j_null);
    if (results == nullptr) {
        throw std::runtime_error("Query execution failed: " + query);
    }
    neo4j_close_results(results);
}
