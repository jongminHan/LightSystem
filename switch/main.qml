import QtQuick 2.6
import QtQuick.Window 2.2
import "."

Window {
    visible: true
    width: 320
    height: 480
    color: "dimgray"
    title: qsTr("Light Controller")

    Button {
        id: btON
        x: 10
        y: 142
        text: qsTr("ON")
        onClicked: controller.turnOn()
    }

    Button {
        id: btOFF
        x: 10
        y: 215
        text: qsTr("OFF")
        onClicked: controller.turnOff()
    }
}
