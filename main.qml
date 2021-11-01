import QtQuick 2.7
import QtQuick.Controls 1.0
import QtQuick.Controls.Material 2.0
import Qt.labs.settings 1.0

ApplicationWindow {
    id: window
    width: 380
    height: 380
    visible: true
    title: qsTr("Login")

    property alias loginPage: loginPage
    property alias settingsPage: settingsPage
    property alias settingsButton: settingsButton

    property string buttonColor: Material.Teal
    property string primaryColor: Material.primary
    property string secondaryColor: Material.BlueGrey
    property string backgroundColor: Material.background

    SettingsPage {
        id: settingsPage
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.top: parent.top
        anchors.topMargin: voltarButton.height*2
        visible: false
    }

    Button {
        id: voltarButton
        width: 60
        height: 30
        text: qsTr("Voltar")
        anchors.top: parent.top
        anchors.topMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 12
        visible: false
        onClicked: {
            loginPage.visible = true
            voltarButton.visible = false
            settingsPage.visible = false
            settingsButton.visible = true
            settingsButton.checked = false
        }
    }

    LoginPage {
        id: loginPage
        anchors.fill: parent
    }

    Settings {
        id: colorSettings
        property alias x: window.x
        property alias y: window.y
        property alias width: window.width
        property alias height: window.height
        property alias buttonColor: window.buttonColor
        property alias primaryColor: window.primaryColor
        property alias secondaryColor: window.secondaryColor
        property alias backgroundColor: window.backgroundColor
    }

    Component.onDestruction: {
        colorSettings.buttonColor = window.buttonColor
        colorSettings.primaryColor = window.primaryColor
        colorSettings.secondaryColor = window.secondaryColor
        colorSettings.backgroundColor = window.backgroundColor
    }

    Component.onCompleted:  {
        window.buttonColor = colorSettings.buttonColor
        window.primaryColor = colorSettings.primaryColor
        window.secondaryColor = colorSettings.secondaryColor
        window.backgroundColor = colorSettings.backgroundColor
    }

    Button {
        id: settingsButton
        width: 40
        height: 40
        visible: true
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        checkable: true
        checked: false
        GroupBox {
            flat: true
            anchors.fill: parent
            Image {
                anchors.fill: parent
                source: "qrc:/images/settingsButton.svg"
                fillMode: Image.PreserveAspectFit
            }
        }
        onClicked: {
            settingsPage.visible = true
            settingsButton.visible = false
            voltarButton.visible = true
            loginPage.visible = false
        }
    }
}
