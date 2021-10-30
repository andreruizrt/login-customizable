import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.0
import Qt.labs.settings 1.0

ApplicationWindow {
    id: window
    visible: true
    width: 380
    height: 380
    title: qsTr("Login")

    property alias loginPage: loginPage
    property alias settingsPage: settingsPage
    property alias settingsButton: settingsButton
    property string backgroundColor: Material.background
    property string primaryColor: Material.primary
    property string secondaryColor: Material.BlueGrey
    property string buttonColor: Material.Teal

    Button {
        id: settingsButton
        width: 100
        height: 40
        text: qsTr("Configuração")
        visible: true
        onClicked: {
            visible = false
            settingsPage.visible = true
            voltarButton.visible = true
            loginPage.visible = false
        }
    }

    Button {
        id: voltarButton
        width: 60
        text: qsTr("Voltar")
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        visible: false
        onClicked: {
            voltarButton.visible = false
            settingsPage.visible = false
            settingsButton.visible = true
            loginPage.visible = true
        }
    }


    Settings {
        id: colorSettings
        property alias x: window.x
        property alias y: window.y
        property alias width: window.width
        property alias height: window.height
        property alias bgColor: window.backgroundColor
        property alias primaryColor: window.primaryColor
        property alias secondaryColor: window.secondaryColor
        property alias buttonColor: window.buttonColor
    }

    Component.onDestruction: {
        colorSettings.bgColor = window.backgroundColor
        colorSettings.primaryColor = window.primaryColor
        colorSettings.secondaryColor = window.secondaryColor
        colorSettings.buttonColor = window.buttonColor
    }

    Component.onCompleted:  {
        window.backgroundColor = colorSettings.bgColor
        window.primaryColor = colorSettings.primaryColor
        window.secondaryColor = colorSettings.secondaryColor
        window.buttonColor = colorSettings.buttonColor
    }

    LoginPage {
        id: loginPage
        anchors.fill: parent
    }

    SettingsPage {
        id: settingsPage
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 5
        visible: false

    }
}
