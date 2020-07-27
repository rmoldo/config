#!/bin/bash

GREEN='\033[0;32'
RED='\033[0;31m'
NC='\033[0m'

# Emacs setup
cp -r .emacs.d /home/$USER
printf "${GREEN}PASSED${NC}: copied .emacs.d to /home/${USER}/"

# Vim setup
cp .vimrc /home/$USER
mkdir /home/$USER/.vim

if ! git clone https://github.com/VundleVim/Vundle.vim.git /home/$USER/.vim/bundle/Vundle.vim; then
    printf "${RED}FAILED${NC}: could not clone vundle repo\n"
    exit 1;
else
    printf "${GREEN}PASSED${NC}: cloned vundle repo successfully\n"
fi

# GDB
cp .gdbinit /home/$USER

# Tmux
cp .tmux.conf /home/$USER/

# Scripts
cp -r .scripts/ /home/$USER/
