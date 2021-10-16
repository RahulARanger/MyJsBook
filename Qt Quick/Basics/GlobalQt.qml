import QtQuick 2.15
import QtQuick.Window 2.15

Window{
    title: "Global Qt Object"
    Rectangle{
        Text{
            text: "quit"
            color: "orange"
            anchors.centerIn: parent
        }
        anchors.centerIn: parent
        width: 100
        height: 100
        radius: 100
        color: "black"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log(Qt.fontFamilies())
                Qt.openUrlExternally("https://github.com/")
                Qt.quit() // this calls the quit signal in  QMLEngine
            }
        }
    }

    width: 690
    height: 420

}
