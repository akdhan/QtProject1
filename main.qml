import QtQuick 2.12
import QtQuick.Window 2.12
import QtQml 2.12
import Sensor 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int sensorValue: 0

    Text {
        id: text
        text: qsTr("Test Hello ")
        font.pixelSize: 30
        color: "red"
        anchors.centerIn: parent

    }

    Sensor{
        id: sens
    }

    Text {
        id: value
        anchors.top: text.bottom
        anchors.horizontalCenter: text.horizontalCenter
        anchors.topMargin: 10
        font.pixelSize: 50
        text: sensorValue

    }
    Timer{
        id: timer
        interval: 1000
        repeat: true
        running: true
        onTriggered: {
            sensorValue = sens.getsensorValue()
//            if (sensorValue > 100)
//                sensorValue = 0

        }
    }
}
