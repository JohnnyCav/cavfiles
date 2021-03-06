#!/bin/sh

echo "Starting i3cav installer..."

# install i3-gaps instead of i3
sudo dnf install i3-gaps --allowerasing -y

# install i3-extended
sudo dnf install @i3-extended -y

# install other dependencies
sudo dnf install zsh i3status i3lock rofi alacritty picom nitrogen polkit-gnome lxappearance thunar dunst volumeicon network-manager-applet arandr blueman pavucontrol xbacklight ImageMagick flameshot neofetch -y

# copy config files around
rm -rf ~/.config/alacritty
cp -r ~/cavfiles/alacritty ~/.config/

rm -rf ~/.config/dunst
cp -r ~/cavfiles/dunst ~/.config/

rm -rf ~/.config/i3
cp -r ~/cavfiles/i3 ~/.config/

rm -rf ~/.config/i3status
cp -r ~/cavfiles/i3status ~/.config/

rm -rf ~/.config/nitrogen
cp -r ~/cavfiles/nitrogen ~/.config/

rm -rf ~/.config/rofi
cp -r ~/cavfiles/rofi ~/.config/

rm -rf ~/.config/volumeicon
cp -r ~/cavfiles/volumeicon ~/.config/

# themes, icons and fonts
mkdir ~/.themes
cp -r ~/cavfiles/fonts ~/.local/share/
cp -r ~/cavfiles/icons ~/.local/share/
cp -r ~/cavfiles/themes/* ~/.themes/

# move wallpapers
mkdir ~/Pictures
cp -r ~/cavfiles/wallpapers/* ~/Pictures/

echo "i3cav finish installing!"
