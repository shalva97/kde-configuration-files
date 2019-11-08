
#keyboard layout
mkdir $HOME/.config/xkb
curl https://raw.githubusercontent.com/shalva97/dotFiles/master/home/.config/xkb/kayboard%20layout > $HOME/.config/xkb/kl
curl https://raw.githubusercontent.com/shalva97/dotFiles/master/home/scripts/set_xkb_layout.sh > $HOME/.config/autostart-scripts/set_keyboard_layout.sh
chmod +x $HOME/.config/autostart-scripts/set_keyboard_layout.sh
