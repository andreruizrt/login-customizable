import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import Qt.labs.settings 1.0

Item {
    id: page

    Rectangle {
        id: rectangle
        width: parent.width
        height: parent.height
        color: backgroundColor

        ColumnLayout {
            id: columnLayout
            x: 220
            y: 131
            width: 200
            height: 228
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            Label {
                id: loginLabel
                text: qsTr("Login")
                color: primaryColor
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                verticalAlignment: Text.AlignTop
                horizontalAlignment: Text.AlignLeft
                font.weight: Font.ExtraLight
                font.capitalization: Font.Capitalize
                font.pointSize: 30
            }

            ColumnLayout {
                id: usuarioColumnLayout
                width: 100
                height: 100
                Layout.fillWidth: true

                Label {
                    id: usuarioLabel
                    text: qsTr("Usuário:")
                    color: secondaryColor
                }

                TextField {
                    id: usuarioTextField
                    Layout.fillWidth: true
                    placeholderText: qsTr("Usuário ou email")
                }
            }

            ColumnLayout {
                id: senhaColumnLayout
                width: 100
                height: 100
                Layout.fillWidth: true
                Layout.fillHeight: false

                Label {
                    id: usuarioLabel1
                    text: qsTr("Senha:")
                    color: secondaryColor
                }

                TextField {
                    id: senhaTextField
                    Layout.fillWidth: true
                    echoMode: TextInput.Password
                    placeholderText: qsTr("Senha")
                }
            }

            Button {
                id: entrarButton
                width: 200
                height: 50
                text: qsTr("Entrar")
                Layout.fillHeight: true
                background: Rectangle {
                    color: buttonColor
                }
                Layout.fillWidth: true
            }
        }
    }
}
