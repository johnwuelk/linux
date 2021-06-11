find out bluetooth model/driver:
  dmesg | grep -i bluetooth
output f.i.: BCM20702A1-0b05-17cb
get .hcd file of exact above output from https://github.com/winterheart/broadcom-bt-firmware
and put it in /lib/firmware/brcm
-> reboot and enjoy with pulseaudio-bluetooth (if alsa is installed, pulseaudio has to be run first for bluetooth to work!)
use utilities like bluetoothctl to test or blueman etc.
