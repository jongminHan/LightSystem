import QtQuick 2.5

Item {
	id: root
	width: 300; height: 50
	property alias text: label.text
	signal clicked

	Rectangle {
		id: rect 
		anchors.fill: parent
		color: "black"

		Text {
			id: label
			anchors.centerIn: parent
			text: qsTr("Button")
			font.pointSize: 18
			color: "white"
		}
	}

	MouseArea {
		id: mouseArea 
		anchors.fill: parent
		onClicked: {
			root.clicked()
		}
	}
}