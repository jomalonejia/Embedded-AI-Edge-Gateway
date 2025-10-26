import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import EmbeddedAI.UI 1.0   // 对应 qt_add_qml_module URI

ApplicationWindow {
    id: root
    width: 1280
    height: 720
    visible: true
    title: "Embedded AI Edge Gateway"

    // 顶部 HeaderBar
    header: HeaderBar {
        title: root.title
        onMenuClicked: drawer.open()
    }

    // 左侧抽屉菜单
    Drawer {
        id: drawer
        width: 220
        edge: Qt.LeftEdge
        modal: true

        Column {
            anchors.fill: parent
            spacing: 10
            ListView {
                id: menuList
                anchors.fill: parent
                model: ["Capture", "Inference", "Behavior", "Speech",
                        "Dispatcher", "Plugins", "Core"]
                delegate: Button {
                    text: modelData
                    width: parent.width
                    onClicked: {
                        console.log("Pushing page:", modelData)
                        let pagePath = "pages/" + modelData + "Page.qml"
                        console.log("Page path:", pagePath)
                        stackView.push(Qt.resolvedUrl(pagePath))
                        drawer.close()
                    }
                }
            }
        }
    }

    // 中间页面显示区域
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("pages/CapturePage.qml")
    }
}
