# Dwm-Dots
Important Information
---------------------

Because of my workflow and for what I need, I dont have audio support built in to the dots. The main colorscheme is catppuccim and is meant to be as minimal and fast as possible for my needs. Take this information into account before installing.

# Installation

Packages Needed for System
--------------------------
- Make sure you have a aur installer or you can manually install them. Mine is yay so that is what is in this example, but feel free to use whatever.

```
yay -S brightnessctl alacritty neovim xsel xorg-server feh xorg-xinit zsh thorium-browser-bin libxdamage jdtls jdk21-openjdk python unzip tmux 
```
- Also, I use the JetBrainsMono Nerd Font for everything. You can change the font or copy the files from .local/share/fonts to your local dir and then run "fc-cache -fv"

Cloning and Copying
-------------------

- Clone the repo with:
```
git clone https://github.com/DarthMooMancer/Dwm-Dots.git
```
Automatically moving:
_____________________

- install stow with yay/pacman 
- cd into the dotfiles folder
- stow . --adopt 

Manually:
_________

- cp -r .config/* ~/.config
- And so on and so forth for each thing

Building
--------

- inside of the .config/suckless folder build both dwm. dmenu, and slstatus

-- use either the comp alias from my zsh or:
```
sudo rm -rf config.h && make && sudo make install
```
