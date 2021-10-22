import QtQuick 2.15
import QtQuick.Window 2.15

Window{
    height: 420
    width: 690

    Column{
        ExternalSignal{
            id: external
        }
        Rectangle{
            color: "black"
            width: 200
            height: 100

            Text{
                anchors.centerIn: parent
                id: box
                color: "white"
            }


        }

        function writeInBox(isOrange, isHovered){
            console.log(isOrange, isHovered)
            box.color = isOrange ? "orange": "dodgerblue"
            box.text = isHovered ? "Inside the Box": "Outside the Box"
        }

        Component.onCompleted: {
            external.hovered.connect(writeInBox)
        }
    }
}
