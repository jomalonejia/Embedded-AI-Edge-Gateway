add_library(inference STATIC
    inferenceengine.cpp
)

target_include_directories(inference PUBLIC ${CMAKE_SOURCE_DIR}/include/inference)
target_link_libraries(inference Qt6::Core core)
