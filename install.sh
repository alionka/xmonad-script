#!/usr/bin/sh
DISTROS=$( awk '{print $1}' /etc/issue)
USER=whoami

####### Copy files 
cp src/Xdefaults ~/.Xdefaults
cp src/xsession ~/.xsession
cp src/xmobarrc ~/.xmobarrc
mkdir ~/.xmonad
cp src/xmonad.hs ~/.xmonad/
############## Install packages
if [ "$OS" == Debian ];
then
      su -c 'apt-get install trayer feh xmobar xmonad libghc-xmonad-contrib-dev ibghc-xmonad-dev suckless-tools rxvt-unicode-256color -y'


else
	sudo apt-get install xmonad libghc6-xmonad-contrib-dev libghc6-xmonad-dev dwm-tools trayer feh rxvt-unicode-256color xmobar -y
fi



