import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import Qt.labs.settings 1.0

ApplicationWindow {
    Settings {

    }

    visible: true
    width: 380
    height: 380
    title: qsTr("Login")

    LoginPage {
        id: page1
        anchors.fill: parent
    }
}

