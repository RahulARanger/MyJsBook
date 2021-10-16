import QtQuick 2.15
import QtQuick.Window 2.15

Item{
    // by using Item we can prevent them directly using the column ones, since here, it doesn't have id

    signal clicked
    id: item
    Column{ // arranges things vertically
        Rectangle{
            width: 300
            height: 100
            color: 'orange'
        }

        Row{ // arranges things horizontally
            Rectangle{
                color: "blue"
                width: 150
                height: 100
            }
            Rectangle{
                color: "dodger blue"
                width: 150
                height: 100
            }

        }


        Rectangle{
            width: sampleButton.implicitWidth + 20
            height: sampleButton.implicitHeight + 20 // increases with the width of the text so we use implicitWidth
            color: "darkorange"
            Text {
                id: sampleButton
                text: "Click Me"
                anchors.centerIn: parent
            }

            MouseArea{
                anchors.fill: parent
                onClicked:{
                    console.log("You have Clicked a Button")
                    sampleButton.text += sampleButton.text
                    item.clicked() // we call this a function
                }
            }


        }
    }
}
