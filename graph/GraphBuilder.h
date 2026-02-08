#pragma once

#include <neo4j-client.h>
#include <iostream>

class GraphBuilder {
public:
    GraphBuilder(const std::string &username, const std::string &password);
    ~GraphBuilder();
    void persistAll();

private:
    void createIndex();
    void clear();

    void execute(const std::string& query);

private:
    neo4j_connection_t* conn;
    const size_t batchSize = 100;
};
