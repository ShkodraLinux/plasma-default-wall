#!/bin/bash

# set wallpaper
/usr/lib/qt6/bin/qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "var desktops = desktops(); for (var i = 0; i < desktops.length; i++) { var d = desktops[i]; d.wallpaperPlugin = 'org.kde.image'; d.currentConfigGroup = Array('Wallpaper', 'org.kde.image', 'General'); d.writeConfig('Image', 'file:///usr/share/wallpapers/artwork/Nexa Theme/Nexa Theme.png'); d.reloadConfig(); }"

# send nexa linux notification
notify-send -i "/usr/share/pixmaps/nexalinux-logo.png" -a "Nexa Linux" "Welcome to Nexa Linux!" "We hope you will love using our distro."

# dont start after running plasma again on the user that was made
rm -f ~/.config/autostart/nexa-one-time-wall.sh.desktop
