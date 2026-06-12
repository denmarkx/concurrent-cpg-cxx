#include "components/ControlFlowGraph.h"
#include "concurrency/ThreadNode.h"
#include "graph/BranchNode.h"
#include "graph/GraphManager.h"
#include "graph/GraphParser.h"
#include "graph/Node.h"
#include "graph/PhiNode.h"

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include <string>
#include <utility>

ControlFlowGraph::ControlFlowGraph() { _graph = this; };

void ControlFlowGraph::parseModule(const Module& module) {
    GraphManager *graph = GraphManager::get();

    for (FunctionNode *funcNode : graph->getAllNodesOf<FunctionNode>()) {
        if (funcNode->isDeclaration()) continue;
        parseFunction(funcNode, nullptr);
    }

    clean();
}

void ControlFlowGraph::parseFunction(FunctionNode *funcNode, CallNode *callSite, bool isCloned) {
    if (!isCloned && std::find(_visited.begin(), _visited.end(), funcNode) != _visited.end())
        return;

    _visited.push_back(funcNode);

    // Connect F -> start block:
    BasicBlockNode *startBlockNode = funcNode->getStartBlock();
    assert(startBlockNode != nullptr);

    addEdge(funcNode, startBlockNode, CFGEdgeType::DEFAULT);

    for (BasicBlockNode *bb : funcNode->getBlocks()) {
        Node *prevNode = bb;

        for (Node *instr : bb->getInstructions()) {
            switch (instr->getType()) {
                // Call / Invoke: handle regular call path
                //  Invoke: also handles path to unwind block.
                case NodeType::CALL_INVOKE: {
                    CallNode *node = dynamic_cast<CallNode*>(instr);
                    assert(node != nullptr);

                    if (node->isDirectCall()) {
                        if (FunctionNode *candidateFunc = dynamic_cast<FunctionNode*>(node->getCalledFunctionNode())) {
                            if (requiresCloning(candidateFunc) && !isCloned) {
                                FunctionNode *root = GraphParser::cloneFunction(candidateFunc);
                                addEdge(node, root, CFGEdgeType::CALL);
                                parseFunction(root, node, true);
                                _previousClonedFuncMap[funcNode] = root;
                                _numTimesCloned[candidateFunc] += 1;
                            } else {
                                parseFunction(candidateFunc, node);
                            }
                            addEdge(node, candidateFunc, CFGEdgeType::CALL);
                        }
                    }

                    if (callSite && isCloned) {
                        const CallBase *callBase = dyn_cast<CallBase>(callSite->getValue());

                        for (const auto &f : node->getCandidatesByCall(callBase)) {
                            FunctionNode *candidateFunc = GraphManager::get()->getNode<FunctionNode>(f);
                            addEdge(node, candidateFunc, CFGEdgeType::CALL);
                        }
                        break;
                    } 

                    Node *invokeDefault = node->getInvokeDefault();
                    if (invokeDefault)
                        addEdge(node, invokeDefault, CFGEdgeType::DEFAULT);

                    // Handle unwind path:
                    Node *invokeUnwind = node->getInvokeUnwind();
                    if (invokeUnwind)
                        addEdge(instr, invokeUnwind, CFGEdgeType::UNWIND);
                    break;
                }

                case NodeType::THREAD_SPAWN: {
                    if (ThreadNode *tNode = dynamic_cast<ThreadNode*>(instr))
                        addEdge(instr, tNode->getRoutine(), CFGEdgeType::CALL);
                    break;
                }

                // Conditional br instructions: handle path to true and false blocks.
                case NodeType::BR: {
                    BranchNode *node = dynamic_cast<BranchNode*>(instr);
                    assert(node != nullptr);

                    if (node->isConditional()) {
                        Node *trueNode = node->getTruePath();
                        assert(trueNode != nullptr);

                        Node *falseNode = node->getFalsePath();
                        assert(falseNode != nullptr);

                        // Connect to both nodes:
                        addEdge(node, trueNode, CFGEdgeType::COND_TRUE);
                        addEdge(node, falseNode, CFGEdgeType::COND_FALSE);

                        } else {
                        Node *uncondPath = node->getUnconditionalPath();
                        assert(uncondPath != nullptr);

                        addEdge(node, uncondPath, CFGEdgeType::DEFAULT);
                    }
                    break;
                }

                case NodeType::PHI_NODE: {
                    PhiNode *node = dynamic_cast<PhiNode*>(instr);
                    assert(node != nullptr);

                    for (Node *candidateNode : node->getCandidateBlocks()) {
                        assert(candidateNode != nullptr);
                        addEdge(node, candidateNode, CFGEdgeType::PHI_CANDIDATE);
                    }
                    break;
                }
                default: break;
            }

            // If our previous node was a call, then we switch that to be the called function's terminators:
            // TODO: the determination of function terminators should be delegated to FunctionNode and not here
            if (prevNode) {
                if (CallNode *callNode = dynamic_cast<CallNode*>(prevNode)) {
                    if (callNode->getCalledFunction()) {
                        FunctionNode *fNode = dynamic_cast<FunctionNode*>(callNode->getCalledFunctionNode());

                        // ...we may be cloned..
                        if (_previousClonedFuncMap.contains(funcNode)) {
                            FunctionNode *candidate = dynamic_cast<FunctionNode*>(_previousClonedFuncMap[funcNode]);
                            if (candidate)
                                fNode = candidate;
                        }

                        if (fNode && fNode->getTerminator()) {
                            addEdge(fNode->getTerminator(), instr, CFGEdgeType::RETURN);
                            if (instr)
                                prevNode = instr;
                            continue;
                        }
                    }
                }
            }

            if (prevNode && instr)
                addEdge(prevNode, instr, CFGEdgeType::DEFAULT);

            if (instr)
                prevNode = instr;
        }
    }
}

Node* ControlFlowGraph::getNextInBlock(Node *node) {
    const Instruction *instr = dyn_cast<Instruction>(node->getValue());
    if (!instr) return nullptr;

    const Instruction *next = instr->getNextNonDebugInstruction();
    if (!next) return nullptr;
    return GraphManager::get()->getNode(next);
}

void ControlFlowGraph::addEdge(Node *start, Node *end, CFGEdgeType type) {
    _edges[start].push_back( CFGEdge { start, end, type });
    _reverseEdgesMap[end].push_back(start);
}

void ControlFlowGraph::clean() {
    for (const auto &[k, v] : _numTimesCloned) {
        // Get num uses of k's function:
        const Function *f = dyn_cast<Function>(k->getValue());
        if (!f) continue;

        if (f->getNumUses() == v) {
            // Since we've cloned this function the same amount of time
            // in which it is used, we no longer need it.
            std::vector<Node*> removed;
            removeNode(k, removed);
        }
    }
}

void ControlFlowGraph::removeNode(Node *root, std::vector<Node*>& erased) {
    if (std::find(erased.begin(), erased.end(), root) != erased.end()) return;

    erased.push_back(root);
    if (_edges[root].empty()) return;

    for (auto &c : _edges[root]) {
        removeNode(c.end, erased);
    }

    // Check what nodes we were apart of and remove us from reverse and regular map:
    auto parents = _reverseEdgesMap[root];
    for (Node* parent : parents) {
        std::erase_if(_edges[parent], [&](const auto &e) {
            return e.end == root;
        });
    }

    _edges.erase(root);
    _reverseEdgesMap.erase(root);
}

EdgeInfo ControlFlowGraph::getProcessedEdges() const {
    EdgeInfo info;

    for (auto &[root, children] : _edges) {
        for (const CFGEdge &edge : children) {
            info.push_back({
                std::to_string(root->getId()),
                "CFG",
                std::to_string(edge.end->getId()),
                {
                    {"type", to_string(edge.type)},
                }
            });
        }
    }
    return info;
}

/*
 * Returns boolean indicating if this function requires cloning.
 * This gets determined by if all there exists function pointer calls in the body
 * where the fptr is from the parameter and all calls to this function pass in
 * a constant pointer for that parameter. Best example is __rust_try -O0.
 *
 * This uses _numTimesCloned[funcNode] as a cache for multiple calls.
*/
bool ControlFlowGraph::requiresCloning(FunctionNode *node) {
    if (_numTimesCloned.contains(node)) return true;

    const Function *f = dyn_cast<Function>(node->getValue());
    assert(f != nullptr);

    std::unordered_set<unsigned int> funcPtrParamIds;
    for (const BasicBlock &bb : *f) {
        for (const Instruction &instr : bb) {
            if (instr.getOpcode() != Instruction::Call && instr.getOpcode() != Instruction::Invoke)
                continue;
            
            const CallBase *call = dyn_cast<CallBase>(&instr);
            if (call->getCalledFunction())
                continue;

            for (unsigned int i=0; i < call->getNumOperands(); i++) {
                if (isa<Argument>(call->getOperand(i)))
                    funcPtrParamIds.insert(i);
            }
        }
    }

    if (funcPtrParamIds.empty()) return false;

    // Check if all function uses supply a constant pointer to the params:
    for (const User *user : f->users()) {
        const CallBase *call = dyn_cast<CallBase>(user);
        
        if (!call) return false;

        for (unsigned int id : funcPtrParamIds) {
            if (!isa<Function>(call->getOperand(id)))
                return false;
        }
    }

    _numTimesCloned[node] = 0;
    return true;
}

/*
 * Interprocedural DFG from parameter to end of CFG.
 * TODO: will probably loop for a cycle
*/
std::vector<Node*> ControlFlowGraph::traverse(Node* start, bool followCalls) {
    std::vector<Node*> s{start};
    std::queue<std::pair<Node*, std::vector<Node*>>> q;
    q.push({start, {}});

    while (!q.empty()) {
        auto [n, callStack] = q.front();
        q.pop();
        for (auto edge : _edges[n]) {
            if (ThreadNode *tn = dynamic_cast<ThreadNode*>(n))
                if (edge.end == tn->getRoutine()) continue;
            if (!followCalls && edge.type == CALL) continue;

            if (edge.type == RETURN) {
                if (callStack.empty()) continue;
                if (edge.end != getNextInBlock(callStack.back())) continue;
            }

            if (edge.type == DEFAULT) {
                Node *targetFunc = edge.end->getFunction();
                Node *currentFunc = n->getFunction();

                if (targetFunc && currentFunc && targetFunc != currentFunc) {
                    bool onStack = std::find(callStack.begin(), callStack.end(), targetFunc) != callStack.end();
                    if (!onStack)
                        continue;
                }
            }

            if (std::find(s.begin(), s.end(), edge.end) != s.end()) continue;

            s.push_back(edge.end);

            std::vector<Node*> newStack = callStack;
            if (edge.type == CALL)
                newStack.push_back(n->getFunction());
            else if (edge.type == RETURN)
                newStack.pop_back();
            q.push({edge.end, newStack});
        }
    }
    return s;
}

ControlFlowGraph* ControlFlowGraph::get() { return _graph; }
ControlFlowGraph* ControlFlowGraph::_graph = nullptr;
