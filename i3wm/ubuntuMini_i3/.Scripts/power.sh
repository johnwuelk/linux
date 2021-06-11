#!/usr/bin/env bash
# A simple commandline tool to show  system Shutdown/suspend/hibernate/restart dialog.
# this tool can be used in any modern linux desktop environemtnt provided the following packages are instaleld
# * systemd - The new system service manager
# * yad - A powerfull alternative to zenity or 'dialog' command
yad \
  --on-top \
  --center \
  --text-align center \
  --title="Power Options" \
  --text="\nOk Charmaine, Let's take some rest!\n" \
  --button="_Hibernate!gnome-session-hibernate:10" \
  --button="S_leep!gnome-session-suspend:11" \
  --button="_Restart!system-restart:12" \
  --button="_Logout!system-logout:13" \
  --button="_Shutdown!system-shutdown:14" \
  --timeout=5

case "$?" in
  10)
echo 'Hibernate'
    zenity --info --text "Hibernation is not useful on this machine and therefore disabled." 
    ;;
  11)
echo 'Sleep'
    systemctl suspend
    ;;
  12)
echo 'Restart'
    systemctl reboot
    ;;
  13)
echo 'Logout'
    i3-msg exit || lxsession-logout
    ;;
  14)
echo 'Shutdown'
    systemctl poweroff
    ;;
*)
echo 'Nothing...'
esac
