import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.0

Item {
    id: item1
    width: 430
    height: 340

    property alias colorDialog: colorDialog
    property alias colorDialog2: colorDialog2
    property alias colorDialog3: colorDialog3
    property alias colorDialog4: colorDialog4
    property alias buttonColorButton: buttonColorButton
    property alias secondaryColorButton: secondaryColorButton
    property alias primaryColorButton: primaryColorButton
    property alias backgroundColorButton: backgroundColorButton

    ColorDialog {
        id: colorDialog
        width: 350
        height: 440
        title: "Escolha uma cor"
        Component.onCompleted: visible = false
    }

    ColorDialog {
        id: colorDialog2
        width: 350
        height: 440
        title: "Escolha uma cor"
        Component.onCompleted: visible = false
    }

    ColorDialog {
        id: colorDialog3
        width: 350
        height: 440
        title: "Escolha uma cor"
        Component.onCompleted: visible = false
    }

    ColorDialog {
        id: colorDialog4
        width: 350
        height: 440
        title: "Escolha uma cor"
        Component.onCompleted: visible = false
    }


    GroupBox {
        id: groupBox
        width: 400
        height: 284
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 20
        title: "Configuration"

        Label {
            id: label
            width: 32
            height: 13
            text: qsTr("Background:")
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 15
        }

        Button {
            id: backgroundColorButton
            anchors.right: parent.right
            anchors.rightMargin: 6
            anchors.bottom: primaryColorButton.top
            anchors.bottomMargin: 34
            anchors.top: parent.top
            anchors.topMargin: 7
            anchors.left: parent.left
            anchors.leftMargin: 139
            background: Rectangle {
                color: backgroundColor
                border.color: "black"
                border.width: 2
            }
        }

        Label {
            id: label1
            text: qsTr("Primary:")
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: label.bottom
            anchors.topMargin: 50
        }

        Button {
            id: primaryColorButton
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 138
            anchors.right: parent.right
            anchors.rightMargin: 6
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 71

            anchors.leftMargin: 139
            background: Rectangle {
                color: primaryColor
                border.color: "black"
                border.width: 2
            }
        }

        Label {
            id: label2
            text: qsTr("Secondary:")
            anchors.top: label1.bottom
            anchors.topMargin: 50
            anchors.left: parent.left
            anchors.leftMargin: 20
        }

        Button {
            id: secondaryColorButton
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 74
            anchors.left: parent.left
            anchors.leftMargin: 145
            anchors.right: parent.right
            anchors.rightMargin: 6
            anchors.top: parent.top
            anchors.topMargin: 136
            background: Rectangle {
                color: secondaryColor
                border.color: "black"
                border.width: 2
            }
        }

        Label {
            id: label3
            text: qsTr("Button Color:")
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: label2.bottom
            anchors.topMargin: 50
        }

        Button {
            id: buttonColorButton
            anchors.left: parent.left
            anchors.leftMargin: 139
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 9
            anchors.top: parent.top
            anchors.topMargin: 201
            anchors.right: parent.right
            anchors.rightMargin: 6
            background: Rectangle {
                color: buttonColor
                border.color: "black"
                border.width: 2
            }
        }
    }

}
