import QtQuick 2.15
import QtQuick.Window 2.15
import "src" // we import the directories containing other qml files we want

Window{
    width: 690
    height: 420

    // Elements of QML in the same directory are auto imported
    Column{
        CustomElement{
            onClicked: { // "on" + signalName.captialize()
                console.log("oh! U Clicked a Buttons")
            }

        }
        AnotherCustom{

        }

    }


}
