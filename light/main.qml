import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("My Light")
    property string _on: "icons/lightOn.png"
    property string _off: "icons/lightOff.png"

    Image {
        id: light
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        state: myLight.isOn ? "ON" : "OFF"
        states: [
            State {
                name: "ON"
                PropertyChanges { target: light; source: _on }
            },
            State {
                name: "OFF"
                PropertyChanges { target: light; source: _off }
            }
        ]
    }
}
