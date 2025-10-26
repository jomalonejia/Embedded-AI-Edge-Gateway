import QtQuick
import QtQuick.Controls
import QtMultimedia

Rectangle {
    id: videoPanel
    color: "#000000"
    radius: 8
    border.color: "#333"
    border.width: 1

    property alias source: videoOutput.source

    VideoOutput {
        id: videoOutput
        anchors.fill: parent
        fillMode: VideoOutput.PreserveAspectFit
    }

    Label {
        anchors.centerIn: parent
        color: "white"
        text: "Video Stream"
        visible: !videoOutput.source
    }
}
