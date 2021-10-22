import QtQuick 2.15
import QtQuick.Window 2.15

Window{
    title: "Signals and Slots"
    signal transfer(string display) // same types as that of properties var, string, int, etc...
    // this is a property too, so it must be accessed with the id
    width: 690
    height: 420

    function non_exp(msg){ // we can have function def as a slot too
        if(msg){
            console.log(msg)
        }
    }


    Column{
        anchors.left: parent.left

        Row{
            Rectangle{
                id: box_one
                color: "dodger blue"
                width: 100
                height: 100

                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        transfer("Blue") // emitting a signal
                    }
                    onExited: {
                        transfer("")
                    }
                }
            }

            Rectangle{
                color: "orange"
                width: 100
                height: 100

                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        transfer("Orange")
                    }
                    onExited: {
                        transfer("")
                    }
                }
            }

            Rectangle{
                color: "green"
                width: 100
                height: 100

                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        transfer("Green")
                    }
                    onExited: {
                        transfer("")
                    }
                }
            }

            Rectangle{
                color: "red"
                width: 100
                height: 100

                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        transfer("Red")
                    }
                    onExited: {
                        transfer("")
                    }
                }
            }
        }

        Rectangle{
            width: 400
            height: 100
            color: "black"

            Text{
                color: 'white'
                id: display
                anchors.centerIn: parent
                font{
                    bold: true
                    pointSize: 16
                }

                property var slot_1: function(txt){ // slot is a property and a JS's function expression
                    display.text = txt
                }
            }

            Component.onCompleted: { // JS code that will execute after column is executed
                    transfer.connect(display.slot_1) // connect the signal to the slot
                    transfer.connect(non_exp)

            }
        }

    }
    onTransfer: { // this is default slot for every signal [on + signalName.capitalize()]
        console.log("signal emmitted") // default slot
    }

}
