qt_add_executable(EmbeddedAIEdgeGateway
    main.cpp
)

# 主程序的 QML 模块（如果需要）
qt_add_qml_module(EmbeddedAIEdgeGateway
    URI main
    VERSION 1.0
    QML_FILES
        Main.qml
)


target_link_libraries(EmbeddedAIEdgeGateway
    PRIVATE
        Qt6::Quick
        Qt6::Core
        Qt6::Gui
)

include(GNUInstallDirs)
install(TARGETS EmbeddedAIEdgeGateway
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
