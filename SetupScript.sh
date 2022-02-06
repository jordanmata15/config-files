#!/bin/bash

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)


cp $USER_HOME/config-files/.vimrc $USER_HOME

## Create the .vim folder at the root
mkdir ~/.vim
cd ~/.vim

## Add pathogen to the runtime environment
mkdir -p ~/.vim/autoload ~/.vim/bundle
apt install curl
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## Add dracula theme to the .vim folder
git clone https://github.com/jordanmata15/vim
cp -r vim/* ./
rm -rf vim
