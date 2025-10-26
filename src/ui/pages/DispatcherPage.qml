import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    title: "Dispatcher"

    ColumnLayout {
        anchors.fill: parent
        spacing: 10
        padding: 10

        Label {
            text: "Dispatcher Page"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        Rectangle {
            color: "#D0E0FF"
            radius: 5
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                anchors.centerIn: parent
                text: "Result Dispatcher Placeholder"
            }
        }
    }
}
