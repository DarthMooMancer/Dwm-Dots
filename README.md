# Dwm-Dots
Important Information
---------------------

# Installation

Packages Needed for System
--------------------------
- Make sure you have a aur installer or you can manually install them. Mine is yay so that is what is in this example, but feel free to use whatever.

```
sudo emerge -ask kitty neovim X
```
- Also, I use the JetBrainsMono Nerd Font for everything. You can change the font or copy the files from .local/share/fonts to your local dir and then run "fc-cache -fv"

Cloning and Copying
-------------------

- Clone the repo with:
```
git clone https://github.com/DarthMooMancer/Dwm-Dots.git
```
- Copy Everything:
```
cp -r .config/* ~/.config
```

Building
--------

- inside of the .config/suckless folder build both dwm. dmenu, and slstatus
- picom needs to be compiled, I would recommend compiling the neovim 0.12 for full support with my neovim config

```
sudo rm -rf config.h && make && sudo make install
```
