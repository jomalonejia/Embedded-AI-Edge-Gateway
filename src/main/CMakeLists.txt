# 可执行程序定义
add_executable(EmbeddedAIEdgeGateway
    main.cpp
    appcore.cpp
)

# 头文件路径
target_include_directories(EmbeddedAIEdgeGateway
    PRIVATE
        ${CMAKE_SOURCE_DIR}/include
)

# 链接模块
target_link_libraries(EmbeddedAIEdgeGateway
    PRIVATE
        Qt6::Core
        Qt6::Gui
        Qt6::Qml
        Qt6::Quick
        Qt6::Widgets
        core
        dispatcher
        inference
        ui
)

# 指定可执行输出路径
set_target_properties(EmbeddedAIEdgeGateway PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin
)
