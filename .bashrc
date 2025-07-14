if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

alias comp="sudo rm -rf config.h && make && sudo make install && pkill dwm"
