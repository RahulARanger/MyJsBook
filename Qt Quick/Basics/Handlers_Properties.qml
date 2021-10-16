import QtQuick 2.15
import QtQuick.Window 2.15

Window{
    title: "Handlers and Properties"

    property string sample: "*"
    width: 690
    height: 420

    Rectangle{
        anchors.centerIn: parent
        width: 100
        height: 100

        Component.onCompleted: {
            console.log(Component) // refers to the Rectangle i guess
        }

        Text{
            text: "Click Me\n" + sample // this is also a property binding
            anchors.fill: parent
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                sample += "*"
            }
        }
    }

    Component.onCompleted: { // we call this Handler
        console.log(Component) // refers to the Window object
    }

    onSampleChanged: { // general ["On" + propertyName.capitalize() + "Changed"]
        console.log("Changed to", sample)
    }
}
