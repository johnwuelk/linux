#!/bin/bash

apt install wireless-tools network-manager nm-tray wpasupplicant xorg git nnn i3 vim acpi terminator xterm lm-sensors htop rsync 
ntfs-3g ibus-m17n omegat trash-cli xdotool openjfx zenity xclip
#for TUI display manager: https://github.com/nullgemm/ly

usermod -aG sudo johann
groupadd wheel
usermod -aG wheel johann
#so that brightnessctl works without root:
usermod -aG video jo

Chrome browser: https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

apt update
apt install ibus-m17n 

cp ../geez_ethiopic/am-sera.mim /usr/share/m17n/am-sera.mim

mv /etc/default/locale /etc/default/locale_OLD
cat ./locale > /etc/default/locale
