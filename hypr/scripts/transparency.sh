#!/usr/bin/env bash

STATE_FILE="$HOME/.cache/transparency_toggled"

if [[ -f "$STATE_FILE" ]]; then
    # Undo changes (second run)
    hyprctl keyword decoration:active_opacity 0.9
    hyprctl keyword decoration:inactive_opacity 0.75    

    rm -f "$STATE_FILE"
else
    # Apply changes (first run)
    hyprctl keyword decoration:active_opacity 1
    hyprctl keyword decoration:inactive_opacity 1

    touch "$STATE_FILE"
fi
