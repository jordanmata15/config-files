#!/bin/bash

echo
echo "##################################"
echo "		    GIT			            "
echo "##################################"
echo
sudo apt-get install git -y

echo
echo "##################################"
echo "		    WGET		            "
echo "##################################"
echo
sudo apt-get install wget -y

echo
echo "##################################"
echo "		    CHROME		            "
echo "##################################"
echo
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&\
    sudo apt install ./google-chrome-stable_current_amd64.deb &&\
    rm ./google-chrome-stable_current_amd64.deb

echo
echo "##################################"
echo "		    VIM			            "
echo "##################################"
echo
sudo apt-get install vim -y

echo
echo "##################################"
echo "		    CMAKE		            "
echo "##################################"
echo
sudo apt-get install cmake -y

echo
echo "##################################"
echo "		    CURL		            "
echo "##################################"
echo
sudo apt-get install curl -y

echo
echo "##################################"
echo "		    VSCODE		            "
echo "##################################"
echo
# download packages
sudo apt-get install wget gpg -y  &&\
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg &&\
    sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ &&\
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' &&\
    rm -f packages.microsoft.gpg
# install it
sudo apt install apt-transport-https &&\
    sudo apt update &&\
    sudo apt install code &&\

echo
echo "##################################"
echo "		 CLEANUP/UPDATE		        "
echo "##################################"
echo
sudo apt-get autoremove -y
sudo apt-get update -y
sudo apt-get upgrade -y
