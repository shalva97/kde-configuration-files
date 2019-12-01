
#keyboard layout
mkdir $HOME/.config/xkb
curl https://raw.githubusercontent.com/shalva97/dotFiles/master/home/.config/xkb/kayboard%20layout > $HOME/.config/xkb/kl
curl https://raw.githubusercontent.com/shalva97/dotFiles/master/home/scripts/set_xkb_layout.sh > $HOME/.config/autostart-scripts/set_keyboard_layout.sh
chmod +x $HOME/.config/autostart-scripts/set_keyboard_layout.sh

#other small things
curl https://raw.githubusercontent.com/shalva97/set-up-files/master/setupFish.fish | fish
curl https://raw.githubusercontent.com/shalva97/set-up-files/master/setupKDE.fish | fish
curl https://raw.githubusercontent.com/shalva97/dotFiles/master/home/.config/plasma-org.kde.plasma.desktop-appletsrc > $HOME/.config/plasma-org.kde.plasma.desktop-appletsrc
