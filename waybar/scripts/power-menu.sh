#!/usr/bin/env bash

SHUTDOWN=" Shutdown"
REBOOT=" Reboot"
SUSPEND=" Suspend"
HIBERNATE=" Hibernate"

CHOICE=$(echo -e "$SHUTDOWN\n$REBOOT\n$SUSPEND\n$HIBERNATE" | rofi -dmenu -p "Power Options:" -i)

case "$CHOICE" in
    $SHUTDOWN)
        systemctl poweroff
        ;;
    $REBOOT)
        systemctl reboot
        ;;
    $SUSPEND)
        systemctl suspend
        ;;
    $HIBERNATE)
        systemctl hibernate
        ;;
esac
