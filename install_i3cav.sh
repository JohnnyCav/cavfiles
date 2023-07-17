#!/bin/bash

echo "Starting i3cav installer..."

# Update the system...
sudo apt update && sudo apt upgrade -y

# install nala
sudo apt install nala -y

# install i3-gaps instead of i3
sudo nala install i3 i3status i3lock i3blocks -y

# install other dependencies
sudo nala install xorg lightdm zsh rofi kitty picom nitrogen lxpolkit lxappearance nautilus dunst volumeicon-alsa budgie-network-manager-applet arandr blueman pavucontrol xbacklight imagemagick -y

# install other dependencies
sudo nala install flameshot neofetch filezilla putty docker docker-compose meld exa vim bpytop htop -y

# install nvidia driver
sudo nala install nvidia-driver -y

# copy config files around
rm -rf ~/.config/bpytop
cp -r ~/cavfiles/bpytop ~/.config/

rm -rf ~/.config/dunst
cp -r ~/cavfiles/dunst ~/.config/

rm -rf ~/.config/flameshot
cp -r ~/cavfiles/flameshot ~/.config/

rm -rf ~/.config/i3
cp -r ~/cavfiles/i3 ~/.config/

rm -rf ~/.config/i3status
cp -r ~/cavfiles/i3status ~/.config/

rm -rf ~/.config/kitty
cp -r ~/cavfiles/kitty ~/.config/

rm -rf ~/.config/nautilus
cp -r ~/cavfiles/nautilus ~/.config/

rm -rf ~/.config/nitrogen
cp -r ~/cavfiles/nitrogen ~/.config/

rm -rf ~/.config/rofi
cp -r ~/cavfiles/rofi ~/.config/

# themes, icons and fonts
mkdir ~/.themes
mkdir ~/.local
mkdir ~/.local/share
cp -r ~/cavfiles/fonts ~/.local/share/
cp -r ~/cavfiles/icons ~/.local/share/
cp -r ~/cavfiles/themes/* ~/.themes/

# move wallpapers
mkdir ~/Pictures
cp -r ~/cavfiles/wallpapers/* ~/Pictures/

# move .zshrc
rm -rf ~/.zshrc
cp -r ~/cavfiles/.zshrc ~/

# move darthvader.txt
cp -r ~/cavfiles/darthvader.txt ~/

echo "i3cav finish installing!"
