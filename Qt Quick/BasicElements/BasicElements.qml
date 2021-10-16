import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 690
    height: 420
    visible: true
    title: "Item"
    property int gap: 10

    Item{ // this item is like the container of the visible things
        // item itself is not visible
        x: 20
        y: 50
        anchors.centerIn: parent // comment this to know how rectangles are relatively arranged to this item
        width: 500
        height: 300


        Rectangle{ // swallows the item and provides visible support
            id: bg
            color: "black"
            anchors.fill: parent
            border.color: "grey" // border's color
            border.width: 6 // border-width of the rectangle

        }

        Rectangle{
            id: orangeRect
            color: "orange"
            width: 100
            height: 100
            x: 10 // relative to the item
            y: 10
        }

        Rectangle{
            id: greenRect
            color: "green"
            width: 100
            height: 100
            x: orangeRect.x  +orangeRect.width + gap
            y: 10
        }

        Rectangle{
            color: "red"
            id: redRect
            width: 100
            height: 100
            x: greenRect.x + greenRect.width + gap
            y: 10
        }

        Rectangle{
            color: "dodger blue"
            width: 100
            height: 100
            id: blueRect
            x: redRect.x + redRect.width + gap; y: 10 // multiple properties in a single line works like this
        }

        Text{
            x: 100
            y: 100
            color: "pink"
            text: "<b>Hello</b> <i>There</i>" // we can use the HTML-style markup

//            font.pointSize: 20
//            font.family: "Comics Sans MS" // font property is a grouped property, since it has lot of group of elements

            font{ // another way to specify grouped properties
                pointSize: 20
                family: "Comics Sans MS"
            }

        }
    }
}
