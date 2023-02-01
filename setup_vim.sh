#!/bin/bash

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

## copy over the vimrc to the user's home directory
cp ${SCRIPT_DIR}/.vimrc ${USER_HOME}

## Create the .vim folder at the root
mkdir ${USER_HOME}/.vim
cd ${USER_HOME}/.vim

## Download pathogen
mkdir -p ${USER_HOME}/.vim/autoload ~/.vim/bundle
curl -LSso ${USER_HOME}/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## Add dracula theme to the .vim folder
git clone https://github.com/jordanmata15/vim
cp -r vim/* ./
rm -rf vim
