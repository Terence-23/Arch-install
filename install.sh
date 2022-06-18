#!/bin/sh

sudo cp ./etc /etc -r

sudo bash ./pacman-install.sh

git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/slstatus
git clone https://git.suckless.org/st

cp .config/dwm.conf dwm/config.h
cp .config/slstatus.conf slstatus/config.h
cp .config/st.conf st/config.h

cd dwm && sudo make clean install && cd ..
cd st && sudo make clean install && cd ..
cd slstatus && sudo make clean install && cd ..

cp .config/.bashrc ~
cp .config/.bash_profile ~
cp .config/.xinitrc ~
