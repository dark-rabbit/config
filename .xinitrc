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

# eclipse gtk2
export SWT_GTK3=0

# cinnamon
exec cinnamon-session

# # touchpad ajust
# synclient HorizTwoFingerScroll=1 &
# synclient VertScrollDelta=-111 &
# synclient HorizScrollDelta=-111 &
#
# # ecrans (activer un 2eme ecran ici, xrandr pour le nom)
# xrandr --output eDP1 --auto --primary
# xrandr --output DP1 --auto --left-of eDP1
# # xrandr --output HDMI1 --auto --right-of eDP1
#
# # curseur
# xsetroot -cursor_name left_ptr &
#
# # wallpaper
# feh --bg-fill /home/lapin/Wallpapers/arch.png &
#
# # system tray
# xfce4-power-manager &
# nm-applet &
# pa-applet &
# trayer --edge bottom --align right --SetDockType true --SetPartialStrut true --expand true --widthtype request --height 16 --transparent true --alpha 255 --monitor primary &
# # xfce4-panel &
#
# # conky
# conky &
#
# # compositor
# compton --backend glx --vsync opengl &
#
# # java fix
# export _JAVA_AWT_WM_NONREPARENTING=1
#
# # bspwm
# sxhkd &
# exec bspwm
