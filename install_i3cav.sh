#!/bin/sh

echo "Starting i3cav installer..."

# install i3-gaps instead of i3
sudo dnf install i3-gaps --allowerasing -y

# install other dependencies
sudo dnf install zsh i3status i3lock rofi alacritty picom nitrogen polkit-gnome lxappearance nautilus dunst volumeicon network-manager-applet arandr blueman pavucontrol xbacklight ImageMagick -y

# move config files around
rm -rf ~/.config/alacritty
mv -i ~/cavfiles/alacritty ~/.config/

rm -rf ~/.config/dunst
mv -i ~/cavfiles/dunst ~/.config/

rm -rf ~/.config/i3
mv -i ~/cavfiles/i3 ~/.config/

rm -rf ~/.config/i3status
mv -i ~/cavfiles/i3status ~/.config/

rm -rf ~/.config/nitrogen
mv -i ~/cavfiles/nitrogen ~/.config/

rm -rf ~/.config/rofi
mv -i ~/cavfiles/rofi ~/.config/

rm -rf ~/.config/volumeicon
mv -i ~/cavfiles/volumeicon ~/.config/

# themes, icons and fonts
mkdir ~/.themes 
mkdir ~/.icons

mv fonts ~/.local/share/
mv -i ~/cavfiles/icons/* ~/.icons
mv -i ~/cavfiles/themes/* ~/.themes

# install papirus icons
sudo dnf install papirus-icon-theme -y

# move wallpapers
mkdir ~/Pictures
mv -i ~/cavfiles/wallpapers/* ~/Pictures/

echo "i3cav finish installing!"