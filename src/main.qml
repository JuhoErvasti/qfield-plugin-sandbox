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

  QfToolButton {
    id: pluginButton
    iconSource: 'icon.png'

    onClicked: {
      mainWindow.displayToast('Hello World!')
    }
  }
}
