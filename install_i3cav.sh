#!/bin/sh

echo "Starting i3cav installer..."

# install i3-gaps instead of i3
sudo dnf install i3-gaps --allowerasing -y

# install other dependencies
sudo dnf install zsh i3status i3lock rofi alacritty picom nitrogen polkit-gnome lxappearance nautilus dunst volumeicon network-manager-applet arandr blueman pavucontrol xbacklight ImageMagick -y

# move config files around
mv alacritty ~/.config/
mv dunst ~/.config/
mv i3 ~/.config/
mv i3status ~/.config/
mv nitrogen ~/.config/
mv rofi ~/.config/
mv volumeicon ~/.config/

# themes, icons and fonts
mkdir ~/.themes 
mkdir ~/.icons

mv fonts ~/.local/share/
mv -R icons/* ~/.icons
mv -R themes/* ~/.themes

# install papirus icons
sudo dnf install papirus-icon-theme -y

# move wallpapers
mv -R wallpapers/* ~/Pictures/

echo "i3cav finish installing!"