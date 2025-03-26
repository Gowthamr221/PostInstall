#!/usr/bin/bash

echo "============================================================================="
echo "Update Packages"
echo "============================================================================="

#sudo pacman -Syyu

echo "============================================================================="
echo "Install base utils"
echo "============================================================================="

sudo pacman -S --noconfirm \
    base-devel \
    git \
    man \
    yay \
    neofetch \
    cmake \
    neovim \
    alacritty \
    firefox \
    imagemagick \
    ttf-fira-code

echo "============================================================================="
echo "Install yay utils"
echo "============================================================================="

# Check if yay is installed
if ! command -v yay &> /dev/null; then
    echo "Yay is not installed. Installing yay..."

    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..

else
    echo "Yay is already installed."
fi

yay -S --noconfirm \
    google-chrome \
    visual-studio-code-bin

echo "============================================================================="
echo "Setup wallpaper & lockscreen image"
echo "============================================================================="

mkdir ~/Pictures/Wallpapers
cp ./res/background.jpg ~/Pictures/Wallpapers/background.jpg
cp ./res/lockscreen.png ~/Pictures/Wallpapers/lockscreen.png

echo "============================================================================="
echo "Setup i3 dm"
echo "============================================================================="

sudo pacman -S --noconfirm \
    i3 \
    rofi \
    polybar \
    feh \
    picom

