gentoo-pipewire-launcher &
picom &
xrandr --output HDMI-A-0 --mode 1920x1080 --rate 144 &
setxkbmap -option ctrl:nocaps &
feh --bg-fill /home/andrew/Pictures/Wallpapers/foggy_valley_1.png
bluetoothctl connect C8:84:47:35:2E:61 &
slstatus &
xinput set-prop "Logitech USB Receiver Mouse" "libinput Accel Speed" -0.4 &
while true; do
    dwm 2>~/.dwm.log
done
