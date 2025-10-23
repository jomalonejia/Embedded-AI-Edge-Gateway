add_library(core STATIC
    configmanager.cpp
    eventbus.cpp
    logger.cpp
)

target_include_directories(core PUBLIC ${CMAKE_SOURCE_DIR}/include/core)
target_link_libraries(core Qt6::Core)
