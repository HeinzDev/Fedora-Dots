#!/bin/bash

# --- Copiar configs ---
cp -r ~/Apps/hyprchange/light/kitty/* ~/.config/kitty/
cp -r ~/Apps/hyprchange/light/hypr/* ~/.config/hypr/source/
#cp -r ~/Apps/hyprchange/light/waybar/* ~/.config/waybar/
cp -r ~/Apps/hyprchange/light/material-you/waybar-colors.css ~/.cache/material-you/
cp -r ~/Apps/hyprchange/light/cava/* ~/.config/cava/
cp -rf ~/Apps/hyprchange/light/rofi/onedark.rasi ~/.config/rofi/colors/onedark.rasi

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
# --- Wallpaper ---
killall mpvpaper 2>/dev/null

sleep 1

bash -c 'mpvpaper -o "loop-file=inf no-audio" "*" /home/heinz/Imagens/LIVE\ WALLPAPERS/2b.mp4' &
disown
