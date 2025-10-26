import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: logViewer
    color: "#1E1E1E"
    border.color: "#444"
    radius: 4

    property alias text: logArea.text
    property int maxLines: 100

    ScrollView {
        anchors.fill: parent
        TextArea {
            id: logArea
            wrapMode: TextEdit.Wrap
            color: "lightgreen"
            readOnly: true
            textFormat: TextEdit.PlainText
            font.family: "Monospace"
        }
    }

    function append(line) {
        logArea.text += line + "\n"
        if (logArea.lineCount > maxLines)
            logArea.text = logArea.text.split("\n").slice(-maxLines).join("\n")
    }
}
