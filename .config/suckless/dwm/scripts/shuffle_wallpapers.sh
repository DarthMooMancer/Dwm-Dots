#!/usr/bin/env bash
while true; do
  feh --randomize --bg-fill /home/andrew/.config/suckless/dwm/Wallpapers/*  # Set a random wallpaper
  date +%s > /tmp/last_wallpaper_time  # Save current timestamp
  sleep 600  # Pause for 10 minutes
done
