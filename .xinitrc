
if test -z "$DBUS_SESSION_BUS_ADDRESS"; then
	eval $(dbus-launch --exit-with-session --sh-syntax)
fi
systemctl --user import-environment DISPLAY XAUTHORITY

if command -v dbus-update-activation-environment >/dev/null 2>&1; then
        dbus-update-activation-environment DISPLAY XAUTHORITY
fi

xhost +SI:localuser:$USER

export _JAVA_AWT_WM_NONREPARENTING=1

xsetroot -cursor_name left_ptr

xset r rate 200 60

exec emacs
