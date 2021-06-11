#!/bin/bash
#review windspeed for the next days from wttr.in
#run twice a day via cron

w=$(curl -L wttr.in/Providenciales?format=j1 | grep -Eo "WindGustKmph.*([0-9]){1,}" | cut -d':' -f2)
w=$w$'\n' #append new line because last line is not read in the loop
printf %s "$w" | while IFS= read -r line
do
	echo "${line//' "'/''}"
    if [[ "${line//' "'/''}" -ge 50 ]];then
        zenity --warning --title 'Storm Forecast' --text "<span foreground='Red' font='15'>Storm upcoming with >50 km/h!</span>""\n\nPress Ctrl+W for more details." --no-wrap
        break
    fi
done
