#!/bin/bash
kitty --class btop -e btop &
kitty --class pipes -e pipes  -s 15 -f 75 &
kitty --class clock -e termdown -f cosmike -z -Z "%H %M %S" &

sleep 2

i3-msg '[class="clock"] move up'
i3-msg '[class="pipes"] move down'
i3-msg '[class="btop"] move left'
