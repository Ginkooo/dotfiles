#!/bin/bash

player_status=$(playerctl status 2> /dev/null)
if [[ $? -eq 0 ]]; then
    metadata="$(playerctl metadata artist) - $(playerctl metadata title) - $(playerctl metadata album)"
fi

if [[ $player_status = "Playing" ]]; then
    echo " %{F#5299d9}$metadata"
elif [[ $player_status = "Paused" ]]; then
    echo " %{F#65737E}$metadata"
else
    echo ""
fi
