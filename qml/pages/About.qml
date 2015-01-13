/*
  Copyright (C) 2015 Olavi Haapala.
  Contact: Olavi Haapala <ojhaapala@gmail.com>
  Twitter: @olpetik
  All rights reserved.
  You may use this file under the terms of BSD license as follows:
  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: aboutPage
    property QtObject dataContainer: null
    SilicaFlickable{
        anchors.fill: parent
        contentHeight: column.y + column.height
        //contentHeight: childrenRect.height
        PullDownMenu {
            MenuItem {
                text: "Settings"
                onClicked: {
                    //console.log (dataContainer)
                    pageStack.push(Qt.resolvedUrl("Settings.qml"), {dataContainer: dataContainer})
                }
            }
        }
        Column {
            id: column
            PageHeader {
                title: "About"
            }
            width: parent.width
            SectionHeader { text: "General" }
            Text {
                //font.pointSize: Theme.fontSizeSmall
                color: Theme.highlightColor
                wrapMode: Text.WordWrap
                width: root.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "Working Hours Tracker for SailfishOS \nA simple working hours tracker to keep track on working hours."
            }
            SectionHeader { text: "License" }
            Text {
                //font.pointSize: Theme.fontSizeMedium
                color: Theme.highlightColor
                wrapMode: Text.WordWrap
                width: root.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "Copyright (C) 2015 Olavi Haapala \nLicensed under BSD."
            }
            SectionHeader { text: "Source" }
            Text {
                //font.pointSize: Theme.fontSizeSmall
                color: Theme.highlightColor
                wrapMode: Text.WordWrap
                width: root.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "Contributions and bug reporst are welcome. Please report issues in github. Link below."
            }
            ValueButton {
                id: github
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 20
                label: "<a href=\"https://github.com/ojhaapala/wht\">https://github.com/ojhaapala/wht</a>"
                onClicked: {
                    Qt.openUrlExternally("https://github.com/ojhaapala/wht")
                }
            }

            SectionHeader { text: "Contact" }
            Text {
                //font.pointSize: Theme.fontSizeSmall
                color: Theme.highlightColor
                wrapMode: Text.WordWrap
                width: root.width
                anchors {
                    left: parent.left
                    right: parent.right
                    margins: Theme.paddingLarge
                }
                text: "Email: ojhaapala@gmail.com"
            }
            ValueButton {
                id: twitter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 20
                label: "<a href=\"https://twitter.com/olpetik\">Twitter: @olpetik</a>"
                onClicked: {
                    Qt.openUrlExternally("https://twitter.com/olpetik")
                }
            }
        }
    }
    /*Component.onCompleted: {
       //console.log(dataContainer);
    }*/
}










