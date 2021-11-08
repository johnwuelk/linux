#!/bin/bash

apt install wireless-tools network-manager nm-tray wpasupplicant xorg git nnn i3 vim acpi xfce4-terminal xfce4-power-manager xterm lm-sensors htop rsync ntfs-3g ibus-m17n omegat trash-cli xdotool openjfx zenity yad xclip xsel libnotify-bin zip w3m lynx neofetch scrot zathura wkhtmltopdf pmount udisks2 imagemagick ncmpcpp mpd mpc feh faketime mpv qalc cmatrix xprintidle fonts-crosextra-carlito fonts-crosextra-caladea ttf-mscorefonts-installer copyq
#for TUI display manager: https://github.com/nullgemm/ly

#fuer laptops:
apt install tlp

#Wichtig: Dieses Paket entfernen (wichtig mit --purge), damit Grafik besser
#funktioniert. Getestet mit  LenovoN581 - keine Verzerrungen mehr:
apt remove --purge xserver-xorg-video-intel

usermod -aG sudo johann
groupadd wheel
usermod -aG wheel johann
#so that brightnessctl works without root:
usermod -aG video jo
#so that I can mount devices without root (for nnn):
usermod -aG plugdev jo

# Chrome browser: https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

apt update
apt install ibus-m17n 

cp ../geez_ethiopic/am-sera.mim /usr/share/m17n/am-sera.mim

mv /etc/default/locale /etc/default/locale_OLD
cat ./locale > /etc/default/locale

#compositor 'PICOM' (descendant of 'compton')
#thanks to https://www.linuxfordevices.com/tutorials/linux/picom
apt install cmake meson git pkg-config asciidoc libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev
git clone https://github.com/jonaburg/picom
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
sudo ninja -C build install
#run picom
picom --config ~/.config/picom/picom.conf --experimental-backends -b


#cava visualizer
apt install libfftw3-dev libasound2-dev libncursesw5-dev libpulse-dev libtool automake libiniparser-dev
export CPPFLAGS=-I/usr/include/iniparser
https://github.com/karlstav/cava.git
cd cava
./autogen.sh
./configure
make
sudo make install

#regarding nnn wallpaper plugin: don't have nitrogen installed. see readme of nnn on MEGA for more info.

# rofi-calc # calculator for currencies, equations, units and much more
git clone https://github.com/svenstaro/rofi-calc.git
sudo apt install rofi-dev qalc libtool qalculate
cd rofi-calc
autoreconf -i
mkdir build
cd build/
../configure
make
make install
####
