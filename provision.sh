#!/usr/bin/env bash

apt-get update

echo "installing development tools needed by the AOS project"
apt-get install -y sudo
adduser vagrant sudo

#Sudo is not necessary because vagrant executes the script as root
apt-get install -y gcc-multilib g++-multilib cmake make git gitk git-gui
apt-get install -y expect socat gawk python-matplotlib python-serial python-lxml
apt-get install -y python-wxgtk-media3.0 python-scipy python-opencv
apt-get install -y ccache python-pip python-pexpect
apt-get install -y automake autoconf libexpat1-dev libtool-bin
apt-get install -y python-zmq

apt-get install bison flex

apt-get remove ModemManager

pip install pymavlink MAVProxy

apt-get install -y xvfb # for testing ardupilot "headless"

apt-get install -y vim # Because vim is better than EMACS

apt-get install default-jdk

# install desktop environment xfce and virtualbox additions only if necessary
# apt-get install -y xfce4 virtualbox-gues-dkms virtualbox-guest-utils virtualbox-guest-x11
# Permit any user to start the GUI
#sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config

