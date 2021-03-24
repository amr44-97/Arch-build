//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "~/all-scripts/bar-functions/dwm_resources.sh",	1,		10},
    {"[",   "~/all-scripts/battey.sh"                ,1      ,0 },
    {"][",  "~/.local/bin/statusbar/dwm_backlight.sh"                 ,0     ,10},
    {"][","~/.local/bin/statusbar/dwm_alsa.sh"                    ,0      ,10},
    {"][", "date '+%b %d (%a) %I:%M%p'",					60,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] =" ";
static unsigned int delimLen = 5;
