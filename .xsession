# background jobs
eval $(gnome-keyring-daemon --components=ssh)
gnome-screensaver &

# user applications
xterm -fn 10x20 &
google-chrome &
pidgin &
xchat &
skype &
gnote &
alarmclock &
icedove &

# window manager
awesome
