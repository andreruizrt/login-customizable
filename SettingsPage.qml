import QtQuick 2.4
import QtQuick.Dialogs 1.0

SettingsPageForm {

    colorDialog.onAccepted: {
        console.log("width: " + colorDialog.width)
        console.log("height: " + colorDialog.height)
        console.log("You chose: " + colorDialog.color)
        if (backgroundColor != colorDialog.color) {
            backgroundColor = colorDialog.color
        }
        colorDialog.visible = false
    }

    colorDialog.onRejected: {
        console.log("Canceled")
        colorDialog.visible = false
    }

    colorDialog2.onAccepted: {
        console.log("You chose: " + colorDialog2.color)
        if (primaryColor != colorDialog2.color) {
            primaryColor = colorDialog2.color
        }
        colorDialog.visible = false
    }

    colorDialog2.onRejected: {
        console.log("Canceled")
        colorDialog.visible = false
    }

    colorDialog3.onAccepted: {
        console.log("You chose: " + colorDialog3.color)
        if (secondaryColor != colorDialog3.color) {
            secondaryColor = colorDialog3.color
        }
        colorDialog.visible = false
    }

    colorDialog3.onRejected: {
        console.log("Canceled")
        colorDialog.visible = false
    }

    colorDialog4.onAccepted: {
        console.log("You chose: " + colorDialog4.color)
        if (buttonColor != colorDialog4.color) {
            buttonColor = colorDialog4.color
        }
        colorDialog.visible = false
    }

    colorDialog4.onRejected: {
        console.log("Canceled")
        colorDialog.visible = false
    }

    backgroundColorButton.onClicked: {
        colorDialog.visible = true
    }

    primaryColorButton.onClicked: {
        colorDialog2.visible = true
    }

    secondaryColorButton.onClicked: {
        colorDialog3.visible = true
    }

    buttonColorButton.onClicked: {
        colorDialog4.visible = true
    }
}


