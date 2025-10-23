add_library(dispatcher STATIC
    dispatcher.cpp
)

target_include_directories(dispatcher PUBLIC ${CMAKE_SOURCE_DIR}/include/dispatcher)
target_link_libraries(dispatcher Qt6::Core core)
