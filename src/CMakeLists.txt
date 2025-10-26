add_subdirectory(capture)
add_subdirectory(control)
add_subdirectory(core)
add_subdirectory(dispatcher)
add_subdirectory(inference)
add_subdirectory(plugins)
add_subdirectory(speech)

qt_add_executable(EmbeddedAIEdgeGatewayApp
    main.cpp
)

qt_add_qml_module(EmbeddedAIEdgeGatewayApp
    URI EmbeddedAIEdgeGateway
    VERSION 1.0
    QML_FILES
        ui/UI.qml
)

target_link_libraries(EmbeddedAIEdgeGatewayApp
    PRIVATE
        Qt6::Quick
        Qt6::Core
        Qt6::Gui
)

include(GNUInstallDirs)
install(TARGETS EmbeddedAIEdgeGatewayApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
