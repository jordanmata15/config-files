#!/bin/bash

USER_HOME=$(getent passwd ${SUDO_USER:-${USER}} | cut -d: -f6)
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
RC_FILE_DIR=${SCRIPT_DIR}/rc_files

# back up old .bashrc with date/time stamp
cp "${USER_HOME}/.bashrc" "${USER_HOME}/.bashrc.bkp_$(date +%Y%m%d_%H%M%S%Z)"

# concatenate my .bashrc (add some newlines between existing and our new stuff)
echo -e "\n\n#############\n\n" >> "${USER_HOME}/.bashrc"
cat "${RC_FILE_DIR}/.bashrc"    >> "${USER_HOME}/.bashrc"

# Set up my github configs
cp "${RC_FILE_DIR}/.gitconfig" "${USER_HOME}/.gitconfig"
