import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property alias usuarioTextField: usuarioTextField

    // setup loading colors
    property string backgroundColor: "#3462b2"
    property string primaryFontColor: "#172c4f"
    property string secondaryFontColor: "#ffffff"
    property alias entrarButton: entrarButton

    Rectangle {
        id: rectangle
        width: parent.width
        height: parent.height
        color: backgroundColor


        Button {
            id: settingsButton
            width: 20
            height: 20
            anchors.bottom: columnLayout.top
            anchors.bottomMargin: 10
            anchors.left: columnLayout.right
            anchors.leftMargin: -4

            Image {
                width: parent.width
                height: parent.height
                sourceSize.width: parent.width
                sourceSize.height: parent.height
                source: "qrc:/images/settings.png"
            }
        }


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
                    color: primaryFontColor
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
                    color: secondaryFontColor
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
                    color: secondaryFontColor
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
                Layout.fillWidth: true
            }
        }
    }
}
