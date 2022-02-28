#!/usr/bin/fish

set_color cyan;  echo -n " - "; set_color normal; echo "Creating configuration setup";
set_color cyan;  echo -n " -> "; set_color normal; echo "i3";
set_color cyan;  echo -n " -> "; set_color normal; echo "polybar";
set_color cyan;  echo -n " -> "; set_color normal; echo "dunst";
set_color cyan;  echo -n " -> "; set_color normal; echo "alacritty";
set_color cyan;  echo -n " -> "; set_color normal; echo "picom";
set_color cyan;  echo -n " -> "; set_color normal; echo "fish-functions";
set_color cyan;  echo -n " -> "; set_color normal; echo "rofi-themes";
set_color cyan;  echo -n " -> "; set_color normal; echo "doas";
echo ""

#rimozione setup vecchio
set_color cyan;  echo -n " - "; set_color normal; echo "Erasing old setup";
rm -r -f ~/setup

#creazione directory
set_color cyan;  echo -n " - "; set_color normal; echo "Creating directories";
mkdir -p ~/setup/i3;
mkdir -p ~/setup/polybar/scripts;
mkdir -p ~/setup/picom;
mkdir -p ~/setup/fish-functions;
mkdir -p ~/setup/rofi-themes;
mkdir -p ~/setup/alacritty;
mkdir -p ~/setup/dunst;

#copia di configurazioni
set_color cyan;  echo -n " - "; set_color normal; echo "Copying configurations";
cp /etc/doas.conf ~/setup/
cp -r ~/.config/alacritty/* 	~/setup/alacritty/
cp -r ~/.config/i3/* 		~/setup/i3/
cp -r ~/.config/polybar/* 	~/setup/polybar/
cp -r ~/.config/picom/* 		~/setup/picom/
cp -r ~/.config/fish/functions/*	~/setup/fish-functions/
cp -r ~/.config/rofi-themes/* ~/setup/rofi-themes/
cp -r ~/.config/dunst/* ~/setup/dunst/
cp -r ~/rofi-themes/* ~/setup/rofi-themes/

set_color green;  echo -n " * "; set_color normal; echo "date > ~/setup/data-creazione.txt";
date > ~/setup/data-creazione.txt
set_color green;  echo -n " * "; set_color normal; echo "zip -r ~/setup.zip ~/setup/";
zip -r ~/setup.zip ~/setup/ 
set_color green;  echo -n " * "; set_color normal; echo "rm -r -f ~/setup";
rm -r -f ~/setup
