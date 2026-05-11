// #define DEBUG_MODE i
#ifdef DEBUG_MODE
    #define LOG_DEBUG(x) std::cerr << "[DEBUG] " << x << std::endl
    #define LOG_NEO4J(x) std::cerr << "[DEBUG] " << x << std::endl
#else
    #define LOG_DEBUG(x)
    #define LOG_NEO4J(x)
#endif

#define PRINT_VALUE(x) x->print(outs()); std::cout << "\n";
#define WARN(x) std::cout << "\033[93m" << x << "\033[0m\n";
