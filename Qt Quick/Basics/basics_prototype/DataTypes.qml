import QtQuick 2.15
import QtQuick.Window 2.15
import "stringTemplates.js" as Templates // this is how we import js files

Window{
    width: 690
    height: 420
    title: "Basic Data Types"

    // values for the types is same as the javascript
    property string customString: "Hello There"
    property int customInt: 69
    property bool customBool: false // true is it's other value
    property double customDouble: 69.69
    property url customUrl: "https://github.com/"
    property var customVar: "sample variable" // genric type means we can assign it any value of any type
    // ctrl + i to indent selected lines

    property var anotherString: String("#FF008800")
    property color aColor: Qt.rgba(232/255, 126/255, 4/255, 1)  // we use values from 0-1 so we divide them by 255
    property rect aRect: Qt.rect(69, 69, 69, 420) // rectange of x pos, y pos, width and height attributes
    property point aPoint: Qt.point(69, 69) // x pos, y pos
    property size aSize: Qt.size(10, 10) // width and height
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })] // same as js's Array
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; }) // we can assing the function expression


    Rectangle{
        anchors.fill: parent
        color: "black"
        Text{ // mouse pointer over the element and then click F1 to view the docs for that element
            id: rectText
            color: aColor
            anchors.centerIn: parent
            text: customString // property binding
            font.bold: !customBool // note:  we can use javascript's operators
        }
    }

    Component.onCompleted: { // after the window gets loaded or executed
        console.log(Templates.valueTemplate(customBool))
        print(Templates.valueTemplate(customDouble)) // another way to print
        console.log(Templates.valueTemplate(customInt))
        console.log(Templates.valueTemplate(customString))
        console.log(Templates.valueTemplate(customUrl))
        console.log(Templates.valueTemplate(anArray))
        console.log(Templates.valueTemplate(aFunction))

        console.log(`Rectange Object: ${aRect}, whose dimesnions are (${aRect.x}, ${aRect.y}) ${aRect.width} X ${aRect.height}`)
        console.log(`Point Object: ${aPoint} whose dimensions are (${aPoint.x}, ${aPoint.y})`)
        console.log(`Sise object: ${aSize} whose dimensions are (${aSize.width}, ${aSize.height})`)
    }
}

