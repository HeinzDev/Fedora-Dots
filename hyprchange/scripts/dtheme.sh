#!/bin/bash

# --- Copiar configs ---
cp -r ~/Apps/hyprchange/dark/kitty/* ~/.config/kitty/
cp -r ~/Apps/hyprchange/dark/hypr/* ~/.config/hypr/source/
cp -r ~/Apps/hyprchange/dark/material-you/waybar-colors.css ~/.cache/material-you/
cp -r ~/Apps/hyprchange/dark/cava/* ~/.config/cava/
cp -rf ~/Apps/hyprchange/dark/rofi/onedark.rasi ~/.config/rofi/colors/onedark.rasi

# --- Waybar ---
killall waybar 2>/dev/null
while pgrep waybar >/dev/null; do sleep 0.1; done
nohup waybar >/dev/null 2>&1 &

# --- Cava ---
#killall cava 2>/dev/null
#cava &

# --- Kitty ---
killall kitty 2>/dev/null

# --- Wallpaper ---
killall mpvpaper 2>/dev/null

sleep 1

bash -c 'mpvpaper -o "loop-file=inf no-audio" "*" /home/heinz/Imagens/LIVE\ WALLPAPERS/milk-room.mp4' &
disown
