#!/bin/bash

arg=$1

if [[ $arg == mute ]]; then
	amixer -q -D pulse sset Master toggle
fi

if [[ $arg == up ]]; then
	if ! [[ $(pacmd list-sinks | grep "volume: front") =~ "120%" ]]; then
		amixer -q -D pulse sset Master,0 5%+ unmute
	fi
fi

if [[ $arg == down ]]; then
	amixer -q -D pulse sset Master,0 5%- unmute
fi


