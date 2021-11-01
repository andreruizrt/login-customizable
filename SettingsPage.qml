import QtQuick 2.4
import QtQuick.Dialogs 1.0

SettingsPageForm {

    colorDialog.onAccepted: {
        if (backgroundColor !== colorDialog.color) {
            backgroundColor = colorDialog.color
        }
        colorDialog.visible = false
    }

    colorDialog.onRejected: {
        colorDialog.visible = false
    }

    colorDialog2.onAccepted: {
        if (primaryColor !== colorDialog2.color) {
            primaryColor = colorDialog2.color
        }
        colorDialog.visible = false
    }

    colorDialog2.onRejected: {
        colorDialog.visible = false
    }

    colorDialog3.onAccepted: {
        if (secondaryColor !== colorDialog3.color) {
            secondaryColor = colorDialog3.color
        }
        colorDialog.visible = false
    }

    colorDialog3.onRejected: {
        colorDialog.visible = false
    }

    colorDialog4.onAccepted: {
        if (buttonColor !== colorDialog4.color) {
            buttonColor = colorDialog4.color
        }
        colorDialog.visible = false
    }

    colorDialog4.onRejected: {
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


