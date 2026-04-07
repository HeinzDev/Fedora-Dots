#!/usr/bin/env bash

## Author  : Aditya Shakya (adi1090x)
## Github  : @adi1090x
#
## Applets : MPD (music)

# Import Current Theme


# Source theme
source "$HOME"/.config/rofi/applets/shared/theme.bash
theme="$type/$style"

# Get player status
status="$(playerctl status 2>/dev/null)"

if [[ -z "$status" ]]; then
    prompt='Offline'
    mesg="No player active"
else
    artist="$(playerctl metadata artist 2>/dev/null)"
    title="$(playerctl metadata title 2>/dev/null)"
    prompt="${artist:-Unknown}"
    mesg="${title:-No Title} :: $status"
fi

# Layout
if [[ ( "$theme" == *'type-1'* ) || ( "$theme" == *'type-3'* ) || ( "$theme" == *'type-5'* ) ]]; then
    list_col='1'
    list_row='6'
elif [[ ( "$theme" == *'type-2'* ) || ( "$theme" == *'type-4'* ) ]]; then
    list_col='6'
    list_row='1'
fi

# Options
layout=$(grep 'USE_ICON' ${theme} | cut -d'=' -f2)

if [[ "$layout" == 'NO' ]]; then
    if [[ "$status" == "Playing" ]]; then
        option_1="⏯ Pause"
    else
        option_1="⏯ Play"
    fi
    option_2="⏹ Stop"
    option_3=" Previous"
    option_4=" Next"
    option_5=" Repeat"
    option_6=" Random"

else
    if [[ "$status" == "Playing" ]]; then
        option_1=""
    else
        option_1=""
    fi
    option_2=""
    option_3=""
    option_4=""
    option_5=""
    option_6=""
fi

# Rofi CMD
rofi_cmd() {
    rofi -theme-str "listview {columns: $list_col; lines: $list_row;}" \
        -theme-str 'textbox-prompt-colon {str: "";}' \
        -font "FiraCode Nerd Font 24, Symbols Nerd Font 24" \
        -dmenu \
        -p "$prompt" \
        -mesg "$mesg" \
        -markup-rows \
        -theme ${theme}
}

# Run rofi
run_rofi() {
    echo -e "$option_1\n$option_2\n$option_3\n$option_4\n$option_5\n$option_6" | rofi_cmd
}

# Commands
run_cmd() {
    case "$1" in
        --opt1)
            playerctl play-pause
            notify-send -u low -t 1000 " $(playerctl metadata title 2>/dev/null)"
            ;;
        --opt2)
            playerctl stop
            ;;
        --opt3)
            playerctl previous
            notify-send -u low -t 1000 " $(playerctl metadata title 2>/dev/null)"
            ;;
        --opt4)
            playerctl next
            notify-send -u low -t 1000 " $(playerctl metadata title 2>/dev/null)"
            ;;
        --opt5)
            notify-send "Repeat not supported"
            ;;
        --opt6)
            notify-send "Random not supported"
            ;;
    esac
}

# Execute
chosen="$(run_rofi)"

case ${chosen} in
    $option_1) run_cmd --opt1 ;;
    $option_2) run_cmd --opt2 ;;
    $option_3) run_cmd --opt3 ;;
    $option_4) run_cmd --opt4 ;;
    $option_5) run_cmd --opt5 ;;
    $option_6) run_cmd --opt6 ;;
esac
