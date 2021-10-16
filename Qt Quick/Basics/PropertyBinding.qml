import QtQuick 2.15
import QtQuick.Window 2.15

Window{
    title: "Property Binding"
    width: 690
    height: width - 250 // property binding

    Rectangle{
        id: rect
        width: 50
        height: width * 1.5 // refer the local property
        color: 'orange'
    }
    Rectangle{
        id: leftButton
        width: 69
        height: 69
        color: 'black'
        anchors.bottom: parent.bottom // sets the rectange at the parent relative to parent default bottom - left

        Text{
            id: mode
            anchors.fill: parent
            text: "2x"
            color: "white"
        }

        MouseArea{
            anchors.fill: parent
            onClicked:{
                rect.width += 2 // increase the width of the rect by 1
                // since it's height is binded with width, it will also change
                // it's like the excel cells when applied with a formulae based on other cells
            }

        }
    }

    Rectangle{
        id: rightButton
        color: "yellow"
        width: 69
        height: 69
        anchors.bottom: parent.bottom
        anchors.left: leftButton.right // rightside of the left button (bottom - left) so anchors.left
        Text{
            anchors.fill: parent
            text: "to 3x"
        }

        MouseArea{
            anchors.fill: parent
            onClicked:{
//                rect.height =  100 // this breaks the property binding with the rect.width
                // and after doing this we can only change the width by clicking the leftButton not the height

                // so to initate binding at the run time
                mode.text="3x"
                rect.height = Qt.binding(function(){return rect.width * 3}) // comment this to know it might break the property binding
                // takes a function expression as a parameter and returns the value based on the another property

            }
        }
    }

}
