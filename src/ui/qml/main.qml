import QtQuick 6.10
import QtQuick.Controls 6.10

ApplicationWindow {
    id: root
    width: 640
    height: 480
    visible: true
    title: "Embedded AI Edge Gateway"

    Rectangle {
        anchors.fill: parent
        color: "#202020"

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "Hello, Embedded AI Edge Gateway!"
                color: "white"
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                width: parent.width
            }

            Button {
                text: "Start"
                onClicked: console.log("Start button clicked")
            }
        }
    }
}
