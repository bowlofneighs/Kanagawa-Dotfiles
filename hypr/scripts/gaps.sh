#!/usr/bin/env bash

STATE_FILE="$HOME/.cache/hypr_gaps_toggled"

if [[ -f "$STATE_FILE" ]]; then
    # Undo changes (second run)
    hyprctl keyword general:gaps_in 0
    hyprctl keyword general:gaps_out 0
    hyprctl keyword general:border_size 0
    hyprctl keyword decoration:rounding 0

    rm -f "$STATE_FILE"
else
    # Apply changes (first run)
    hyprctl keyword general:gaps_in 5
    hyprctl keyword general:gaps_out 5
    hyprctl keyword general:border_size 2
    hyprctl keyword decoration:rounding 10

    touch "$STATE_FILE"
fi
