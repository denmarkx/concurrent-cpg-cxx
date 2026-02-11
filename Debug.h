#define DEBUG_MODE i
#ifdef DEBUG_MODE
    #define LOG_DEBUG(x) std::cerr << "[DEBUG] " << x << std::endl
#else
    #define LOG_DEBUG(x)
#endif
