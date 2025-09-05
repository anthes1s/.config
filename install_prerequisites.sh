#!/bin/sh

sudo pacman -Syu hyprland uwsm hyprpaper power-profiles-daemon docker docker-buildx docker-compose git firefox waybar brightnessctl alacritty neovim gcc make ripgrep fd unzip nodejs-lts-jod npm ttf-font-awesome otf-font-awesome woff2-font-awesome ttf-hack-nerd polkit libnewt wofi nautilus grim wl-clipboard

cp ./.bashrc ~/
echo '[SUCCESS] Copied .bashrc to $HOME'

cp ./.bash_profile ~/
echo '[SUCCESS] Copied .bash_profile to $HOME'
