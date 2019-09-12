import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ListModel {
        id: fruitModel
        ListElement { name: QT_TR_NOOP("Grapes"); icon: "1f347" }
        ListElement { name: QT_TR_NOOP("Melon"); icon: "1f348" }
        ListElement { name: QT_TR_NOOP("Watermelon"); icon: "1f349" }
        ListElement { name: QT_TR_NOOP("Tangerine"); icon: "1f34a" }
        ListElement { name: QT_TR_NOOP("Lemon"); icon: "1f34b" }
        ListElement { name: QT_TR_NOOP("Banana"); icon: "1f34c" }
        ListElement { name: QT_TR_NOOP("Pinapple"); icon: "1f34d" }
        ListElement { name: QT_TR_NOOP("Red apple"); icon: "1f34e" }
        ListElement { name: QT_TR_NOOP("Green apple"); icon: "1f34f" }
    }

    ListView {
        anchors.fill: parent
        anchors.margins: 10
        model: fruitModel

        delegate: Item {
            height: 82
            width: ListView.view.widht

            Row {
                spacing: 20

                Image {
                    source: "https://github.com/twitter/twemoji/raw/master/assets/72x72/" + icon + ".png"
                    width: 72
                    height: 72
                }
                Text {
                    text: qsTr(name)

                    height: 72
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.pixelSize: 30
                }
            }
        }
    }
}
