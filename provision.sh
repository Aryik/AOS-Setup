#!/usr/bin/env bash

apt-get update

echo "installing development tools needed by the AOS project"
apt-get install -y sudo
adduser logname sudo

#Sudo is not necessary because vagrant executes the script as root
apt-get install -y gcc-multilib g++-multilib cmake make git gitk git-gui
apt-get install -y expect socat gawk python-matplotlib python-serial python-lxml
apt-get install -y python-wxgtk-media3.0 python-scipy python-opencv
apt-get install -y ccache python-pip python-pexpect
apt-get install -y automake autoconf libexpat1-dev libtool-bin
apt-get install -y python-zmq

apt-get remove ModemManager

pip install pymavlink MAVProxy

apt-get install -y xvfb # for testing ardupilot "headless"

apt-get install -y vim # Because vim is better than EMACS
