#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# urxvt conf
xrdb ~/.Xresources &

# pave numerique
numlockx &

# ecrans (activer un 2eme ecran ici, xrandr pour le nom)
xrandr --output eDP1 --auto --primary
xrandr --output DP1 --auto --left-of eDP1

# curseur
xsetroot -cursor_name left_ptr &

# wallpaper
feh --randomize --bg-fill /home/lapin/Data/Pictures/wallpapers/best/*

# system tray
nm-applet &
trayer --edge bottom --align right --SetDockType true --SetPartialStrut true --expand true --widthtype request --height 20 --transparent true --alpha 255 --monitor primary &

# conky
conky &

# bspwm
sxhkd &
exec bspwm

# exec cinnamon-session
