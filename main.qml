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

    property string backgroundColor: Material.background
    property string primaryColor: Material.primary
    property string secondaryColor: Material.BlueGrey
    property string buttonColor: Material.Teal

    Settings {
        id: colorSettings
        category: "Color"
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
        colorSettings.bgColor = "#A2F039"
        colorSettings.primaryColor = "#319A4F"
        colorSettings.secondaryColor = "#62F4DC"
        colorSettings.buttonColor = "#8A1BB2"
    }

    Menu {
        Menu {
            title: qsTr("&File")
            Action { text: qsTr("&New...") }
            Action { text: qsTr("&Open...") }
            Action { text: qsTr("&Save") }
            Action { text: qsTr("Save &As...") }
            MenuSeparator { }
            Action { text: qsTr("&Quit") }
        }
        Menu {
            title: qsTr("&Edit")
            Action { text: qsTr("Cu&t") }
            Action { text: qsTr("&Copy") }
            Action { text: qsTr("&Paste") }
        }
        Menu {
            title: qsTr("&Help")
            Action { text: qsTr("&About") }
        }
    }

    LoginPage {
        id: login
        anchors.fill: parent
    }
}

