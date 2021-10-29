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
            height: 200
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            ColumnLayout {
                id: usuarioColumnLayout
                width: 100
                height: 100

                Label {
                    id: loginLabel
                    text: "login"
                    color: primaryColor
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    verticalAlignment: Text.AlignTop
                    horizontalAlignment: Text.AlignLeft
                    font.weight: Font.ExtraLight
                    font.capitalization: Font.Capitalize
                    font.pointSize: 30
                }

                Label {
                    id: usuarioLabel
                    text: qsTr("Usuário:")
                    color: secondaryColor
                }

                TextField {
                    id: usuarioTextField
                    placeholderText: qsTr("Usuário ou email")
                }
            }

            ColumnLayout {
                id: senhaColumnLayout
                width: 100
                height: 100

                Label {
                    id: usuarioLabel1
                    text: qsTr("Senha:")
                    color: secondaryColor
                }

                TextField {
                    id: senhaTextField
                    placeholderText: qsTr("Senha")
                    echoMode: TextInput.Password
                }
            }

            Button {
                id: entrarButton
                width: 200
                height: 40
                text: qsTr("Entrar")
                background: Rectangle {
                    color: buttonColor
                }

                Layout.fillWidth: true
            }
        }
    }
}
