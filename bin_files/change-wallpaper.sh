#!/bin/bash

# Directory where your wallpapers are stored
WALLPAPER_DIR="$HOME/images/cycle_wallpapers"

# Select a random wallpaper
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the wallpaper using Nitrogen
nitrogen --set-zoom-fill "$WALLPAPER" --save
