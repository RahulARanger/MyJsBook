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

            Text{
                id: orangeText
                anchors.centerIn: parent
            }

            MouseArea{
                anchors.fill: parent // swallows it's parents
                hoverEnabled: true //default is false
                onClicked: { // events
                    // js code
                    textToShow = "Orange"
                    console.log(`Clicked ${textToShow} Rect`);
                    console.log(typeof orangeText) // this one block thing is js's object
                    console.log(typeof textToShow) // this one is string
                }

                onEntered: { // enter
                    orangeText.text = "Orange"
                }

                onExited: { // leave
                    orangeText.text = "" // we can access the properties using the dot notation
                }
            }
        }

        Rectangle{
            width: 100
            height: 100
            color: "#0db7ed"
            id: blueRect // shouldn't be inside the quotes
            radius: 20

            Text{
                id: blueText
                anchors.centerIn: parent
            }


            MouseArea{
                anchors.fill: parent // swallows it's parents
                hoverEnabled: true //default is false
                onClicked: {
                    textToShow = "Blue"
                    console.log(`Clicked ${textToShow} Rect`);
                }

                onEntered: { // enter
                    blueText.text = "Blue"
                }

                onExited: { // leave
                    blueText.text = "" // we can access the properties using the dot notation
                }
            }
        }

        Rectangle{
            width: 100
            height: 100
            color: "green"
            id: greenRect // shouldn't be inside the quotes
            radius: 20 // like the border radius

            Text{
                id: greenText
                anchors.centerIn: parent
            }

            MouseArea{
                anchors.fill: parent // swallows it's parents
                hoverEnabled: true //default is false
                onClicked: {
                    // js code
                    textToShow = "Green"
                    console.log(`Clicked ${textToShow} Rect`);
                }

                onEntered: { // enter
                    greenText.text = "Green"
                }

                onExited: { // leave
                    greenText.text = "" // we can access the properties using the dot notation
                }
            }
        }

        Rectangle{
            width: 100
            height: 100
            color: "red"
            id: redRect // shouldn't be inside the quotes
            radius: 20 // like the border radius

            Text{
                id: redText
                anchors.centerIn: parent
            }

            MouseArea{
                anchors.fill: parent // swallows it's parents
                hoverEnabled: true //default is false
                onClicked: {
                    textToShow = "Red"
                    console.log(`Clicked ${textToShow} Rect`);
                }

                onEntered: { // enter
                    redText.text = "Red"
                }

                onExited: { // leave
                    redText.text = "" // we can access the properties using the dot notation
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
                // property binding
                color: "orange"
            }

            MouseArea{
                anchors.fill: parent
                onClicked:{
                    console.log("Clickd the circle", showArea.text)
                    showArea.text = "blocked" // doing this removes the property binding
                }
            }

        }

    }

}
