
<h2 align="center">HeinzDev Fedora Dotfiles</h2>


## **Preview**

<p align="center"><img src="https://i.imgur.com/TpmI0tj.png"></p>
<p align="center"><img src="https://i.imgur.com/Qp2YImE.png"></p>

## 📁 Structure


```
/HOME
├── .config/
│  ├── hypr/
│  │   ├── hyprland.conf
│  │   └── source/
│  │       ├── appearence.conf
│  │       ├── autostart.conf
│  │       ├── binds.conf
│  │       └── windowrules.conf
│  ├── waybar/
│  │   ├── config
│  │   └── style.css
│  ├── cava
│  │   ├── config
│  │   └── config1 (waybar)
│  ├── kitty
│  │   ├── kitty.conf
│  │   └── colors.conf
│  ├── swaync
│  │   ├── config.json
│  │   └── style.css
│  └── rofi/
├── Apps/
│  └── hyprchange/
│      └── themes/ (Ciano/Light/Dark)
│      └── scripts/
├── .cache/
│  └── material-you
│      ├── colors.css
│      └── waybar-colors.css
└── .zshrc
```

##  Dependencies

### 📦 Required

- **hyprland** — Wayland Window Manager
- **waybar** — Main Bar

### ⚙️ Optional

- **cava** — Audio Visualizer
- **kitty** — terminal
- **rofi** — App launcher
- **swaync** — Notifications
- **hyprchange** — theme/config switcher
- **material-you** — dynamic color scheme

## **Hyprchange**

### Hyprchange script changes the Desktop theme

<p align="center"><img src="https://i.imgur.com/xvo2g24.png"></p>
<p align="center"><img src="https://i.imgur.com/lPqJliG.png"></p>

It can be accessed with the hotkeys SUPER + F5–F7, or modified in the ```binds.conf``` file.

### Install

0. Clone project:
```bash
$ git clone https://github.com/HeinzDev/Fedora-Dots.git | cd Fedora-Dots
```

1. Install:

```bash
$ cp -r cava hypr kitty rofi swaync rofi ~/.config
$ mkdir ~/.cache && cp -r material-you ~/.cache
$ mkdir ~/Apps && cp -r hyprchange ~/Apps
```
or

```bash
$ chmod +x install.sh
$ ./install.sh
```

## 
<div id="header" align="center">
  <a href="https://github.com/HeinzDev/">
    <img src="https://i.imgur.com/OojM6I5.png" width="100"/>
  </a>
  <a href="https://github.com/HeinzDev/">
    <h3>HeinzDev</h3>  
  </a>
</div>

