import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 200
    height: 200

    signal hovered(bool isOrnage, bool isHovered)

    Row{
        Rectangle{
            width: 100
            height: 200
            color: 'dodger blue'
            MouseArea{
                hoverEnabled: true
                onEntered: {
                    hovered(false, true)
                }
                onExited: {
                    hovered(false, false)
                }
                anchors.fill: parent
            }

        }

        Rectangle{
            width: 100
            height: 200
            color: "orange"
            MouseArea{
                hoverEnabled: true
                onEntered: {
                    hovered(true, true)
                }
                onExited: {
                    hovered(true, false)
                }
                anchors.fill: parent
            }
        }

    }
}
