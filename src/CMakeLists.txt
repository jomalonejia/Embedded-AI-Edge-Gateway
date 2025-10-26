add_subdirectory(capture)
add_subdirectory(control)
add_subdirectory(core)
add_subdirectory(dispatcher)
add_subdirectory(inference)
add_subdirectory(plugins)
add_subdirectory(speech)

qt_add_executable(EmbeddedAIEdgeGateway
    main.cpp
)

qt_add_qml_module(EmbeddedAIEdgeGateway
    URI EmbeddedAI.UI
    VERSION 1.0
    QML_FILES
        ui/Main.qml
        ui/pages/CapturePage.qml
        ui/pages/InferencePage.qml
        ui/pages/BehaviorPage.qml
        ui/pages/SpeechPage.qml
        ui/pages/CorePage.qml
        ui/components/HeaderBar.qml
        ui/components/LogViewer.qml
        ui/widgets/VideoPanel.qml
        QML_FILES ui/pages/DispatcherPage.qml
        QML_FILES ui/pages/PluginsPage.qml
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
