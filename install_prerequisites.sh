#!/bin/sh

sudo pacman -Syu hyprland uwsm hyprpaper power-profiles-daemon docker docker-buildx docker-compose git firefox waybar brightnessctl alacritty neovim gcc make ripgrep fd unzip nodejs-lts-jod npm ttf-font-awesome otf-font-awesome woff2-font-awesome ttf-hack-nerd polkit libnewt wofi nautilus grim wl-clipboard mesa lib32-mesa linux-firmware-amdgpu python-gobject xf86-video-amdgpu hyprsunset vulkan-radeon lib32-vulkan-radeon lua51 luarocks wget slurp xdg-desktop-portal-wlr glib2 libportal libportal-gtk3 libportal-gtk4 xdg-desktop-portal xdg-desktop-portal-gnome xdg-desktop-portal-gtk xdg-desktop-portal-hyprland openssh less

cp ./.bashrc ~/
echo '[SUCCESS] Copied .bashrc to $HOME'

cp ./.bash_profile ~/
echo '[SUCCESS] Copied .bash_profile to $HOME'
