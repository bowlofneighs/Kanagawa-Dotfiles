#!/usr/bin/env bash

STATE_FILE="$HOME/.cache/active_transparency_toggled"

if [[ -f "$STATE_FILE" ]]; then
    # Undo changes (second run)
    hyprctl keyword decoration:active_opacity 0.9

    rm -f "$STATE_FILE"
else
    # Apply changes (first run)
    hyprctl keyword decoration:active_opacity 1

    touch "$STATE_FILE"
fi