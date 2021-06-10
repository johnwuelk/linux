How to install proprietary Broadcom wireless card driver to connect to the Internet through Wi-Fi in Debian
thanks to https://www.youtube.com/watch?v=JW0f3NOjWys

Based on my BCM4313 in Lenovo N581. wicd refused to work!

Supported Broadcom wireless network cards: 
BCM4311-, BCM4312-, BCM4313-, BCM4321-, BCM4322-, BCM43142-, BCM43224-, BCM43225-, BCM43227-, BCM43228-, BCM4331-, BCM4360-, and BCM4352-

lspci -nn | grep Network

sudo apt-get install wireless-tools
sudo apt-get install network-manager-gnome
sudo apt-get install wpasupplicant

sudo nano /etc/apt/sources.list
(main contrib non-free)

sudo apt-get update

sudo apt-get dist-upgrade

reboot the computer

sudo apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms

sudo modprobe -r b44 b43 b43legacy ssb brcmsmac bcma

sudo modprobe wl

If you get frequent disconnections, it can be fixed with this command:
iwconfig wlan0 power off
