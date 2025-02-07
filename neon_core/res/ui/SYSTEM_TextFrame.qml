import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.4 as Kirigami

import Mycroft 1.0 as Mycroft

Mycroft.Delegate {
    id: systemTextFrame
    skillBackgroundColorOverlay: "#000000"
    property bool hasTitle: sessionData.title.length > 0 ? true : false
    
    Component.onCompleted: {
        console.log(hasTitle)
    }

    contentItem: ColumnLayout {
        Label {
            id: systemTextFrameTitle
            Layout.fillWidth: true
            font.pixelSize: Math.min(systemTextFrame.height/4, Math.max(systemTextFrame.height/10, systemTextFrameMainBody.fontInfo.pixelSize * 1.4))
            wrapMode: Text.Wrap
            horizontalAlignment: Text.AlignHCenter
            visible: hasTitle
            enabled: hasTitle
            font.family: "Noto Sans"
            font.weight: Font.Bold
            text: sessionData.title
        }

        Mycroft.AutoFitLabel {
            id: systemTextFrameMainBody
            Layout.fillWidth: true
            Layout.fillHeight: true
            wrapMode: Text.Wrap
            font.family: "Noto Sans"
            font.weight: Font.Bold
            text: sessionData.text
        }
    }
}
 
