#!/bin/bash
#start the timer quicker and more convenient with shortcut (f.i. meta+T) to this script and with GUI entry thanks to zenity --entry.
setTimer=$(zenity --entry --text "Set Timer as f.i.\r30 minutes:\t30m\r2 hours:\t\t2h\r15 seconds:\t15\rwith message:\t10m 'bring laundry'\t" --title="Timer");

gnome-terminal --title="timer" --tab -x ~/.Scripts/timer.sh $setTimer

#When dealing with YAKUAKE:
#open new yakuake terminal tab
#terminalNo=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession)
#rename tab
#qdbus org.kde.yakuake /yakuake/tabs org.kde.yakuake.setTabTitle $terminalNo "Timer"
#start timer in same tab
#qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal $terminalNo "bash /home/${USER}/timer.sh $setTimer"


#https://www.kartar.net/2018/07/working-with-yakuake/
#OLD:
# if [[ ! `ps aux | grep "timer*.sh"` =~ timer ]]...
# ...
# konsole -e ~/timer.sh $setTimer

