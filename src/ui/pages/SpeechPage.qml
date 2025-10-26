import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    title: "Speech"

    ColumnLayout {
        anchors.fill: parent
        spacing: 10
        padding: 10

        Label {
            text: "Speech Module Page"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        Rectangle {
            color: "#DFF0D8"
            radius: 5
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                anchors.centerIn: parent
                text: "Speech Interaction Placeholder"
            }
        }
    }
}
