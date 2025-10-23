add_library(speech STATIC
    speechengine.cpp
)

target_include_directories(speech PUBLIC ${CMAKE_SOURCE_DIR}/include/speech)
target_link_libraries(speech Qt6::Multimedia core)
