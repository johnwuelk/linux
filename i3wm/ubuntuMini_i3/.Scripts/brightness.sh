#!/bin/bash

arg=$1

if [[ $arg == up ]]; then
	brightnessctl s +10%
fi

if [[ $arg == down ]]; then
	brightnessctl s 10%-
fi

if [[ $arg == toggleOffOn ]]; then
	if [[ $(brightnessctl g) -eq 0 ]]; then
		brightnessctl -r
	else
		brightnessctl -s
		brightnessctl s 0%
	fi
fi

