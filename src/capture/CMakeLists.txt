add_library(capture STATIC
    videocapture.cpp
    audiocapture.cpp
)

target_include_directories(capture PUBLIC ${CMAKE_SOURCE_DIR}/include/capture)
target_link_libraries(capture Qt6::Multimedia core)
