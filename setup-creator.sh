#!/usr/bin/fish

set_color cyan;  echo -n " - "; set_color normal; echo "Creating configuration setup";

#rimozione setup vecchio
set_color cyan;  echo -n " - "; set_color normal; echo "Erasing old setup";
rm -r -v -f ~/setup

#creazione directory
set_color cyan;  echo -n " - "; set_color normal; echo "Creating directories";
mkdir -p -v ~/setup/i3;
mkdir -p -v ~/setup/polybar/scripts;
mkdir -p -v ~/setup/picom;
mkdir -p -v ~/setup/fish-functions;
mkdir -p -v ~/setup/rofi-themes;
mkdir -p -v ~/setup/alacritty;
mkdir -p -v ~/setup/dunst;

#copia di configurazioni
set_color cyan;  echo -n " - "; set_color normal; echo "Copying configurations";
cp -v /etc/doas.conf ~/setup/
cp -r -v ~/.config/alacritty/* 	~/setup/alacritty/
cp -r -v ~/.config/i3/* 		~/setup/i3/
cp -r -v ~/.config/polybar/* 	~/setup/polybar/
cp -r -v ~/.config/picom/* 		~/setup/picom/
cp -r -v ~/.config/fish/functions/*	~/setup/fish-functions/
cp -r -v ~/.config/rofi-themes/* ~/setup/rofi-themes/
cp -r -v ~/.config/dunst/* ~/setup/dunst/
cp -r -v ~/rofi-themes/* ~/setup/rofi-themes/

set_color green;  echo -n " * "; set_color normal; echo "doas apt install" $argv;

