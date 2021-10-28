import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

ColumnLayout {
    id: columnLayout
    width: 200
    height: 200
    anchors.verticalCenter: parent.verticalCenter
    anchors.horizontalCenter: parent.horizontalCenter
    
    Button {
        id: entrarButton
        width: 200
        height: 40
        text: qsTr("Entrar")
    }
    
    ColumnLayout {
        id: usuarioColumnLayout
        width: 100
        height: 100
        
        Label {
            id: usuarioLabel
            text: qsTr("Usuario:")
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
            text: qsTr("Usuario:")
        }
        
        TextField {
            id: senhaTextField
            placeholderText: qsTr("Senha")
            echoMode: TextInput.Password
        }
    }
}
