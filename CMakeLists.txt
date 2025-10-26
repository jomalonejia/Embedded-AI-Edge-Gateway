cmake_minimum_required(VERSION 3.16)

project(EmbeddedAIEdgeGatewayApp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS
    Core
    Gui         # 用于 QGuiApplication
    Quick       # 用于 QQmlApplicationEngine
    Multimedia
)

qt_standard_project_setup(REQUIRES 6.8)

add_subdirectory(models)
add_subdirectory(src)
add_subdirectory(tests)

