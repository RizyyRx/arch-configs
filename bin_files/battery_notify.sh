#!/bin/bash

# Export DISPLAY and XAUTHORITY to access the graphical environment
export DISPLAY=:0
export XAUTHORITY=/home/spade/.Xauthority

# Battery status check
BATTERY_INFO=$(acpi -b)
BATTERY_PERCENT=$(echo "$BATTERY_INFO" | grep -oP '[0-9]+(?=%)')

# Threshold for low battery notification
THRESHOLD=20

if [ "$BATTERY_PERCENT" -le "$THRESHOLD" ]; then
    # Display a notification using dunstify
    dunstify -u critical -t 5000 "Low Battery" "Battery is low: $BATTERY_PERCENT%"
fi
