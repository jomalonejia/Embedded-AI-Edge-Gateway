import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    title: "Plugins"

    ColumnLayout {
        anchors.fill: parent
        spacing: 10
        padding: 10

        Label {
            text: "Plugins Management Page"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        Rectangle {
            color: "#FFE0B2"
            radius: 5
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                anchors.centerIn: parent
                text: "Plugin Controls Placeholder"
            }
        }
    }
}
