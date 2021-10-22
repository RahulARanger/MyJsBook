import QtQuick 2.15
import QtQuick.Window 2.15

Window{
    width: 690
    height: 420
    property alias color: box.color  // instead of changing the color parameter using the box we can use the alias
    // this saves using the time
    property var colors: ["orange", "dodger blue", "green", "yellow"]

    function changeColor(){
        color=colors[Math.floor(Math.random() * colors.length)]
    }

    Rectangle{
        id: box
        color: 'orange'
        width: 100
        height: 100

        MouseArea{
            anchors.fill: parent
            onClicked: {
                changeColor()
            }

        }
    }
}
