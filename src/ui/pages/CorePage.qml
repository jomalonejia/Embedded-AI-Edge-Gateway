import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    title: "Core"

    ColumnLayout {
        anchors.fill: parent
        spacing: 10
        padding: 10

        Label {
            text: "Core System Page"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter
        }

        Rectangle {
            color: "#F8D7DA"
            radius: 5
            Layout.fillWidth: true
            Layout.fillHeight: true
            Text {
                anchors.centerIn: parent
                text: "System & Logs Placeholder"
            }
        }
    }
}
