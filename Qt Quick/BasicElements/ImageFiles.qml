import QtQuick 2.15
import QtQuick.Window 2.15

/*
There are four ways to specify this

1. relative path from the working directory
2. from resource file (.qrc)
3. absolute path to the file
4. from url
*/


// in the method: 2 set the prefix to / and then save the files in the same directory as the qrc file which is in same directory as the qml file
//https://stackoverflow.com/a/40306836/12318454
Window{
    title: "Images"
    width: 690
    height: 420

    Image{
        id: rem
        source: "Images/my_love.jpg" // # 1
        // we get a warning if the image doesn't exist
        width: 300
        height: 300
        fillMode: Image.PreserveAspectFit // preserves the size ratio

    }

    AnimatedImage{ // child of Image, used for showing the Animated Images like GIF
        // 2
        id: remQRC
        width: 300
        height: 300
        fillMode: Image.PreserveAspectFit
        source: "Images/rem-re-zero.gif"
        anchors.right: parent.right
    }

    Image{ // 4
        id: fromURL
        width: 300
        height:300
        fillMode: Image.PreserveAspectFit
        source: "https://i.kym-cdn.com/photos/images/facebook/001/154/017/785.jpg"
        anchors.centerIn: parent
    }
}
