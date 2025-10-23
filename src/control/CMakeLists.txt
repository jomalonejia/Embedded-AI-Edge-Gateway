add_library(control STATIC
    control.cpp
)

target_include_directories(control PUBLIC ${CMAKE_SOURCE_DIR}/include/control)
target_link_libraries(control Qt6::Multimedia core)
