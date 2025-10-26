import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: header
    height: 50
    width: parent ? parent.width : 1280
    color: "#2E3B4E"

    property alias title: titleLabel.text
    signal menuClicked()

    RowLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        Button {
            text: "☰"
            onClicked: header.menuClicked()
        }

        Label {
            id: titleLabel
            color: "white"
            font.pixelSize: 18
        }
    }
}
