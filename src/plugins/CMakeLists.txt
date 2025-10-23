add_library(plugins STATIC
    plugins.cpp
)

target_include_directories(plugins PUBLIC ${CMAKE_SOURCE_DIR}/include/plugins)
target_link_libraries(plugins Qt6::Multimedia core)
