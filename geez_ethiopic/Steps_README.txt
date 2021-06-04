Install ibus-m17n

Add Amharic sera / Tigrinya

Replace file:
sudo cp am-sera.mim /usr/share/m17n/am-sera.mim 

add following lines to ~/.bashrc:
#for ibus languages input
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon --xim -d

TO work in LibreOffice if u don't mind running LibreOff. in GTK 2 mode:
add following lines to ~/.xprofile:
#language ibus input
export OOO_FORCE_DESKTOP="gnome"

Set to Default EN/Keyboard:
=> ibus engine xkb:us::eng
make shortcut for convenience, f.i. Ctrl+Meta+E. Use keyboardEN.sh script.

Restart ibus:
=> pkill ibus-daemon && ibus-daemon &
