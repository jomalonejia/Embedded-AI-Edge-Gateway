import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    title: "Behavior Analysis"

    ColumnLayout {
        anchors.fill: parent
        spacing: 10
        padding: 10

        Label {
            text: "Behavior Analysis Page"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        Rectangle {
            color: "#F5F5DC"
            radius: 5
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                anchors.centerIn: parent
                text: "Behavior Analysis Placeholder"
            }
        }
    }
}
