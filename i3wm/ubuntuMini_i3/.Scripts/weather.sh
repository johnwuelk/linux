#!/bin/bash
google-chrome-stable https://weather.com/weather/today/l/d453608a5738fc18379a98019e77b826c5c780914e5e8be3ad5f5293ac385d62

#OLD1
#wind=$(curl wttr.in/Providenciales?format="%w")
#precip=$(curl wttr.in/Providenciales?format="%p")
#temp=$(curl wttr.in/Providenciales?format="%t")
#wout="$wind\n$precip\n$temp"
#zenity --info --title Weather --text $wout

#OLD2:
#termNo=$(qdbus org.kde.yakuake /yakuake/sessions org.kde.yakuake.addSession)
#qdbus org.kde.yakuake /yakuake/tabs org.kde.yakuake.setTabTitle $termNo "Weather"
#qdbus org.kde.yakuake /yakuake/sessions runCommandInTerminal $termNo "sleep 1 && curl wttr.in/Providenciales?format="%w+%c%p+%t""
