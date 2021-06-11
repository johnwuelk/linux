#!/bin/bash

find /tmp/Popcorn-Time/  \( -iname '*.mp4' -o -iname '*.mkv' \) -exec cp {} ~/Downloads \;
