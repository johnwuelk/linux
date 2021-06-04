#!/bin/bash
## this script changes the keyboard back to english if specific idle time has reached and another keyboard is selected
sec=0
while true #infinite
do
    if [ $sec -gt 20000 ] && [ "xkb:us::eng" != $(eval "ibus engine") ]; then
        command $(eval "ibus engine xkb:us::eng")
    fi
    sleep 21
    sec=$(eval "xprintidle")  #in ms
    #echo $sec >> testDel.txt
done

# via crontab it is NOT working for whatever reason, it behaves weird, meaning it changes to the english keyboard only visibly on the panel icon but you can still write in german letters. when running from the terminal it works properly and you can write in english letters.
