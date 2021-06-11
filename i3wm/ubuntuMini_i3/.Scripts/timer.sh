#!/bin/bash
# scale=2 -> mit 2 decimal points / nachkommast.
TIMER=$1; #argument 1
Message=$2; #argument 2

if [[ $# -ne 0 ]]; then
    if [[ $TIMER == *"m"* ]]; then
        TIMER=${TIMER%m*}   # retain the part before 'm' 
        ((TIMER = TIMER*60))
        echo -e "Timer set to "$(echo "scale=0; $TIMER/60" | bc -l) "minutes.\\n"
    elif [[ $TIMER == *"h"* ]]; then
        TIMER=${TIMER%h*}
        ((TIMER = TIMER*3600))
        echo -e "Timer set to "$(echo "scale=0; $TIMER/3600" | bc -l) "hours.\\n"
    else
        echo -e "Timer set to $TIMER seconds.\\n"
    fi
    #MAIN IDEA Start
    ((secondsTotal=`date +%s`+TIMER));
    ((secondsLeft=secondsTotal-`date +%s`));
    while [ $secondsLeft -ge 1 ]
    do
        ((secondsLeft=secondsTotal-`date +%s`));
        minLeft=$(echo "scale=1; $secondsLeft / 60" | bc -l) 
        echo -ne "Time left: $secondsLeft sec / $minLeft min\r"
        sleep 1;
    done
    #MAIN IDEA End
    zenity --warning --text "$Message Time's Up!" --title="TIME'S UP!" --width=200 &
    echo "Timer ended at `date +%T`"
    paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
else
#if no arguments
    echo "Needs at least one argument, for example:
        ./timer.sh 30
        ./timer.sh 2h
        ./timer.sh 50m 'Bring in laundry'"
fi
