qt_add_qml_module(ui
    URI EmbeddedAI.UI
    VERSION 1.0
    QML_FILES
        qml/main.qml
    RESOURCES
        resources/qml.qrc
    SOURCES
        mainwindow.cpp
        mainwindow.ui
)

target_include_directories(ui PUBLIC ${CMAKE_SOURCE_DIR}/include)

# 链接 Qt 模块和依赖
target_link_libraries(ui
    PRIVATE
        Qt6::Widgets
        Qt6::Quick
        Qt6::Qml
        core
)


install(FILES qml/qmldir
        qml/main.qml
        DESTINATION ${CMAKE_INSTALL_PREFIX}/qml/EmbeddedAI/UI)
