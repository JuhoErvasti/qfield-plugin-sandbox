import QtQuick
import QtQuick.Controls

import org.qfield
import org.qgis
import Theme

Item {
  id: plugin

  property var mainWindow: iface.mainWindow()
  property var positionSource: iface.findItemByObjectName('positionSource')

  Component.onCompleted: {
    iface.addItemToPluginsToolbar(pluginButton)
  }

  Dialog {
    id: aboutDialog
    parent: mainWindow.contentItem

    title: "Test Plugin"

    visible: false
    modal: true
    font: Theme.defaultFont

    z: 10000
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2

    Label {
      width: parent.width
      wrapMode: Text.WordWrap
      text: "This is a test plugin."
    }

    standardButtons: Dialog.Ok
  }

  QfToolButton {
    id: pluginButton
    iconSource: 'icon.png'
    bgcolor: Theme.darkGraySemiOpaque
    round: true

    onClicked: {
      aboutDialog.open();
    }
  }

}
