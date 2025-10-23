cmake_minimum_required(VERSION 3.16)
project(EmbeddedAIEdgeGateway LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Widgets Qml Quick Multimedia Network)

include_directories(${CMAKE_SOURCE_DIR}/include)

# 子目录
add_subdirectory(src/main)
add_subdirectory(src/core)
add_subdirectory(src/capture)
add_subdirectory(src/inference)
add_subdirectory(src/dispatcher)
add_subdirectory(src/control)
add_subdirectory(src/speech)
add_subdirectory(src/plugins)
add_subdirectory(src/ui)
