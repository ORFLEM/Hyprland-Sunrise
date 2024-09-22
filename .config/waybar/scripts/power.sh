#!/usr/bin/env bash

action=$(echo -e "Режим сна\nВыход\nВыключение\nПерезапуск" | wofi --dmenu -c /home/orflem/.config/wofi/wofipw -s /home/orflem/.config/wofi/wofi.css "power:" -L 5)

if [[ "$action" == "Режим сна" ]]
then
    exec systemctl suspend
fi

if [[ "$action" == "Выход" ]]
then
    exec loginctl terminate-user $USER
fi

if [[ "$action" == "Выключение" ]]
then
    exec systemctl poweroff -i
fi

if [[ "$action" == "Перезапуск" ]]
then
    exec systemctl reboot
fi

