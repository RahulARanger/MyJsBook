import QtQuick 2.15
import QtQuick.Window 2.15

Window{
    width: 690
    height: 420

    property ExternalSignal sample: null // allowed

    ExternalSignal{
        id: changed
    }

    Component.onCompleted: {
        sample = changed
        /*
if exported we can set it as ;

ElementasProperty{
    sample: some_ExternalSignal_Id
}

*/
    }

    onSampleChanged: {
        console.log("Yeah now it got changed")
    }
}
