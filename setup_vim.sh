#!/bin/bash

USER_HOME=$(getent passwd ${SUDO_USER:-${USER}} | cut -d: -f6)
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
RC_FILE_DIR=${SCRIPT_DIR}/rc_files

## copy over the vimrc to the user's home directory
cp ${RC_FILE_DIR}/.vimrc ${USER_HOME}

## Create the .vim folder at the root
mkdir ${USER_HOME}/.vim && cd ${USER_HOME}/.vim

## Download and extract pathogen
mkdir -p ${USER_HOME}/.vim/autoload ~/.vim/bundle
curl -LSso ${USER_HOME}/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

## Add dracula theme to the .vim folder so the theme can be loaded when using vim
git clone https://github.com/jordanmata15/vim
mv vim/* ${USER_HOME}/.vim
rm -rf vim
