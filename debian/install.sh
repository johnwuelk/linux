#!/bin/bash

apt update
apt install ibus-m17n 

cp ../geez_ethiopic/am-sera.mim /usr/share/m17n/am-sera.mim

mv /etc/default/locale /etc/default/locale_OLD
cat ./locale > /etc/default/locale
