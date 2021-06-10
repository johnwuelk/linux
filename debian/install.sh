#!/bin/bash

apt install wireless-tools network-manager wpasupplicant xorg git nnn i3 vim acpi

#usermod -aG sudo johann
#groupadd wheel
#usermod -aG wheel johann

apt update
apt install ibus-m17n 

cp ../geez_ethiopic/am-sera.mim /usr/share/m17n/am-sera.mim

mv /etc/default/locale /etc/default/locale_OLD
cat ./locale > /etc/default/locale
