#!/usr/bin/env bash

apt-get update

echo "installing development tools needed by the AOS project"
apt-get install sudo
adduser logname sudo

apt-get install gcc-multilib g++-multilib cmake make git gitk git-gui
apt-get install expect socat gawk python-matplotlib python-serial python-lxml
apt-get install python-wxgtk-media3.0 python-scipy python-opencv
apt-get install ccache python-pip python-pexpect
apt-get install automake autoconf libexpat1-dev libtool-bin
apt-get install python-zmq

apt-get remove ModemManager

pip install pymavlink MAVProxy

apt-get install xvfb # for testing ardupilot "headless"

apt-get install vim # Because vim is better than EMACS
