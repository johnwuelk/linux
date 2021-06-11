#!/bin/bash

wget -q https://www.verseoftheday.com/ -O /tmp/VotD.html

bookChp=$(grep "property=\"og:title\" content=\"" /tmp/VotD.html)
verse=$(grep "property=\"og:description\" content=\"" /tmp/VotD.html)

bookChp=$(echo "$bookChp" | cut -d ':' -f 3,4 | cut -d'"' -f1) 
verse=$(echo "$verse" | cut -d '"' -f 4)

verse=${verse//&quot;/\"}
verse=${verse//&mdash;/—}

zenity --info --width=300 --height=100 --title VerseOfTheDay.com --text "<span font='16'>✝ Verse of the Day ✝\n\n$verse</span>\n\n<span font='12'>$bookChp</span>"


#print title + number of chapter and verse + verse itself
#fold -s => don't wrap in middle of words/ break at spaces
#printf '%s\n%s\n %s ' "✝ Verse of the Day ✝" "$bookChp" "${verse//&quot;/\"}" | fold -s
