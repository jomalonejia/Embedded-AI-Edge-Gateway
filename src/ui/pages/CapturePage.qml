import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    title: "Capture"

    ColumnLayout {
        anchors.fill: parent
        spacing: 10
        padding: 10

        Label {
            text: "Video / Audio Capture Page"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        Rectangle {
            color: "#CCCCCC"
            radius: 5
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                anchors.centerIn: parent
                text: "Video Preview Placeholder"
            }
        }
    }
}
