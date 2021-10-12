import QtQuick 2.15 // imports the QtQuick modules
import QtQuick.Window 2.15 // sub QtQuick module for the window
/*
multi line 
comment
*/

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: 'black'

    Text{
        anchors.centerIn: parent
        text: "Sample Window";
        color: "orange"
        font.pointSize: 18;

    }

}

// run the python file on how this works
