gentoo-pipewire-launcher &
picom &
sh /home/andrew/.config/suckless/dwm/scripts/shuffle_wallpapers.sh &
kitty -e bash -c 'cd /home/andrew/Minecraft_Server && sh /home/andrew/Minecraft_Server/start.sh' &
xrandr --output HDMI-A-0 --mode 1920x1080 --rate 144 &
setxkbmap -option ctrl:nocaps &
bluetoothctl connect C8:84:47:35:2E:61 &
slstatus &
xinput set-prop "Logitech USB Receiver Mouse" "libinput Accel Speed" -0.4 &
while true; do
    dwm 2>~/.dwm.log
done
