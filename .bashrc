if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

export PATH="$HOME/.local/appimages:$PATH"

alias comp="sudo rm -rf config.h && make && sudo make install && pkill dwm"
