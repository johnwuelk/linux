#!/bin/bash
#show last suspend/sleep and shutdown times starting from yesterday
###

shutdownTimes=`journalctl -S yesterday -t systemd-shutdown`
sleepTimes=`journalctl -S yesterday -t systemd-sleep`

echo "Shutdown Times:"
shutdownTimes=`sed 's/:[0-9][0-9]\s.*$//g' <<< "${shutdownTimes}"`
sed '1d' <<< "${shutdownTimes}" #delete 1st line
echo "-------------"
echo "Sleep Times:"
sleepTimes=`sed 's/:[0-9][0-9]\s.*://g' <<< "${sleepTimes}"`
sleepTimes=`sed 's/-- Logs.*$//g' <<< "${sleepTimes}"`
sed '1d' <<< "${sleepTimes}" #delete 1st line

#variables must be in quotation marks otherwise new lines will not be preserved when outputted.
