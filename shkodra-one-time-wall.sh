#!/bin/bash

# set wallpaper
/usr/lib/qt6/bin/qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "var desktops = desktops(); for (var i = 0; i < desktops.length; i++) { var d = desktops[i]; d.wallpaperPlugin = 'org.kde.image'; d.currentConfigGroup = Array('Wallpaper', 'org.kde.image', 'General'); d.writeConfig('Image', 'file:///usr/share/wallpapers/artwork/Shkodra/TrioStyle.png'); d.reloadConfig(); }"

# send Shkodra linux notification
notify-send -i "/usr/share/pixmaps/debian-logo.png" -a "Shkodra Linux" "Welcome to Shkodra!" "Have a nice time!"

# dont start after running plasma again on the user that was made
rm -f ~/.config/autostart/shkodra-one-time-wall.sh.desktop
