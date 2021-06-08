sudo apt install dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev

cd /path/where/you/want/the/repository

# clone the repository
git clone https://github.com/Airblader/i3.git i3-gaps
cd i3-gaps

#compile
mkdir -p build && cd build
meson --prefix /usr/local #on github i3 wiki: "meson .." 
ninja


#If you don’t use a display manager, just edit your .xinitrc file and comment out your current window manager and add the following line:
#exec i3
#If you are running a display manager you should be able to pick i3 from the login screen. Remember it will be called i3, not i3-gaps.
#source/moreInfo: https://lottalinuxlinks.com/how-to-build-and-install-i3-gaps-on-debian/
