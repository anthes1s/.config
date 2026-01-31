#!/bin/sh

sudo pacman -Syu hyprland uwsm hyprpaper power-profiles-daemon docker docker-buildx docker-compose git firefox waybar brightnessctl alacritty neovim gcc make ripgrep fd unzip nodejs-lts-jod npm ttf-font-awesome otf-font-awesome woff2-font-awesome ttf-hack-nerd polkit libnewt wofi nautilus grim wl-clipboard mesa lib32-mesa linux-firmware-amdgpu python-gobject xf86-video-amdgpu hyprsunset vulkan-radeon lib32-vulkan-radeon lua51 luarocks wget slurp xdg-desktop-portal-wlr glib2 libportal libportal-gtk3 libportal-gtk4 xdg-desktop-portal xdg-desktop-portal-gnome xdg-desktop-portal-gtk xdg-desktop-portal-hyprland openssh less vulkan-tools linux-zen linux-zen-headers gamemode lib32-gamemode vkd3d gst-plugins-good gst-plugins-bad gst-plugins-ugly inter-font libva-mesa-driver libva-utils lib32-libva-mesa-driver

rm ~/.bashrc
cp ./.bashrc ~/
echo '[SUCCESS] Copied .bashrc to $HOME'

rm ~/.bash_profile
cp ./.bash_profile ~/
echo '[SUCCESS] Copied .bash_profile to $HOME'

sudo usermod -aG docker $USER
echo "[SUCCESS] Added $USER to the docker group"

sudo usermod -aG gamemode $USER
echo "[SUCCESS] Added $USER to the gamemode group"

echo none | sudo tee /sys/block/nvme0n1/queue/scheduler
echo '[SUCCESS] Updated I/O scheduler'
