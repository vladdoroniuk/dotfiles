#!/bin/sh

userresources=$HOME/.config/X11/.Xresources
usermodmap=$HOME/.config/X11/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

if command -v dbus-launch >/dev/null && test -z "${DBUS_SESSION_BUS_ADDRESS}"; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

brightnessctl set 75%
setxkbmap -layout 'us,ru' -option 'grp:win_space_toggle'
vibrant-cli eDP 1.35
xinput disable 15
xinput --set-prop 11 299 0, 1
xinput --set-prop 11 296 0.3
xxkb &
pipewire &
feh --no-fehbg --bg-scale "$HOME/Images/bg-3.jpg" &
flameshot &
exec i3
