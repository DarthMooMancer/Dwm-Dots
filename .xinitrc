#!/bin/sh
slstatus &
feh --bg-fill ~/.config/suckless/dwm/Wallpapers/Nord_waves.jpg &
picom &
# xrandr --output HDMI-A-0 --mode 1920x1080 --rate 120.0 --right-of eDP  &
# xinput --set-prop "Glorious Model O Wireless" "libinput Accel Speed" -0.7 &

while true; do
    dwm 2> ~/.dwm.log
done
