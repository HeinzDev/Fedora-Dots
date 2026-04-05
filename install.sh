#!/bin/bash

set -e

# Pastas de origem (assumindo que você está no diretório onde elas estão)
BASE_DIR="$(pwd)"

# Criar diretórios necessários
mkdir -p ~/.config
mkdir -p ~/Apps
mkdir -p ~/.cache

echo "== Copiando configs para ~/.config =="

cp -r "$BASE_DIR/cava" ~/.config/
cp -r "$BASE_DIR/hypr" ~/.config/
cp -r "$BASE_DIR/kitty" ~/.config/
cp -r "$BASE_DIR/rofi" ~/.config/
cp -r "$BASE_DIR/swaync" ~/.config/
cp -r "$BASE_DIR/waybar" ~/.config/

echo "== Movendo hyprchange para ~/Apps =="
cp -r "$BASE_DIR/hyprchange" ~/Apps/

echo "== Movendo material-you para ~/.cache =="
cp -r "$BASE_DIR/material-you" ~/.cache/

echo "== Finalizado com sucesso =="