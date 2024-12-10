const unsigned int interval = 1000;
static const char unknown_str[] = "n/a";
#define MAXLEN 2048

static const struct arg args[] = {
  { run_command,   "PKGS %s   ", "pacman -Qq | wc -l" },
	{ battery_perc,  "BAT %s%%   ", "BAT0" },
	{ datetime,      "%s "      , "%H:%M" },
	{ datetime,      "%s "      , "%b %d" },
};

