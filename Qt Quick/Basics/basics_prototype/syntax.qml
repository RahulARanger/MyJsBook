import QtQuick 2.15
import QtQuick.Window 2.15

Window{ // able to exist coz of QtQuick.Window
    id: main // these are all built-in properties
    // id helps us to identify this element in this qml
    // must be a unique value.

    visible: true
    color: "#0c0b0b" // default is false
    width: 600; height: 420; // properties in single line
    title: "Basic Syntax"

    property string textToShow: "Hello"  // this is how we create properties
    // property type name: value

    Row{
        id: row1
        anchors.centerIn: parent // centers this element relative to it's parent Window

        spacing: 20

        Rectangle{
            width: 100
            height: 100
            color: "orange"
            id: orangeRect // shouldn't be inside the quotes
            radius: 20 // like the border radius

            MouseArea{
                anchors.fill: parent // swallows it's parents
                onClicked: {
                    // js code
                    console.log("Clicked Orange Rect");
                    textToShow = "orange"
                }
            }
        }

        Rectangle{
            width: 100
            height: 100
            color: "#0db7ed"
            id: blueRect // shouldn't be inside the quotes
            radius: 20

            MouseArea{
                anchors.fill: parent // swallows it's parents
                onClicked: {
                    // js code
                    console.log("Clicked Blue Rect");
                    textToShow = "Blue"
                }
            }
        }

        Rectangle{
            width: 100
            height: 100
            color: "green"
            id: greenRect // shouldn't be inside the quotes
            radius: 20

            MouseArea{
                anchors.fill: parent // swallows it's parents
                onClicked: {
                    // js code
                    console.log("Clicked Green Rect");
                    textToShow = "green"
                }
            }
        }

        Rectangle{
            width: 100
            height: 100
            color: "red"
            id: redRect // shouldn't be inside the quotes
            radius: 20

            MouseArea{
                anchors.fill: parent // swallows it's parents
                onClicked: {
                    // js code
                    console.log("Clicked Red Rect");
                    textToShow = "red"
                }
            }
        }

        Rectangle{
            id: showRect
            width: 100; height: 100
            radius: 100
            color: "yellow"
            Text{
                id: showArea
                anchors.centerIn: parent
                text: textToShow // using the custom property
                color: "orange"
            }

            MouseArea{
                anchors.fill: parent
                onClicked:{
                    console.log("Clickd the circle")
                    textToShow = "Hello"
                }
            }

        }

    }

}
