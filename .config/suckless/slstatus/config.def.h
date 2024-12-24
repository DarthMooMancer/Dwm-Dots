const unsigned int interval = 1000;
static const char unknown_str[] = "n/a";
#define MAXLEN 2048

/*
 * battery_perc        battery percentage              battery name (BAT0)
 * battery_remaining   battery remaining HH:MM         battery name (BAT0)
 * battery_state       battery charging state          battery name (BAT0)
 *                                                     NULL on OpenBSD/FreeBSD
 * cat                 read arbitrary file             path
 * cpu_freq            cpu frequency in MHz            NULL
 * cpu_perc            cpu usage in percent            NULL
 * datetime            date and time                   format string (%F %T)
 * keyboard_indicators caps/num lock indicators        format string (c?n?)
 *                                                     see keyboard_indicators.c
 * run_command         custom shell command            command (echo foo)
 * vol_perc            OSS/ALSA volume in percent      mixer file (/dev/mixer)
 */

static const struct arg args[] = {
  /* function format          argument */ 
  { run_command,  " VOL %s%% | ", "sh ~/.config/suckless/slstatus/scripts/audio.sh"},
  { run_command,  "PKGS %s | ", "pacman -Q | wc -l"},
  { battery_perc, "BAT %s%% ", "BAT0"},
  { battery_remaining, "%s | ",  "BAT0"},
  { datetime,     "%s",          "%H:%M %A %d %Y" },
};
