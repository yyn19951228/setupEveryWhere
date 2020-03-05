#!/bin/bash

# copy vimrc
# make sure that you are on the right machine that update the file

read -p "Please make sure you are on the right machine that update the settings: [Y/n]" userInput

if [[ -z "$userInput" ]]; then
   printf '%s\n' "No input entered"
   exit 1
else
  if [[ $userInput == "Y" ]] || [[ $userInput == "y" ]]; then
    cp ~/.vimrc ./vim/vimrc
    cp ~/.vim/coc-settings.json ./vim/coc-settings.json
    cp ~/.config/nvim/init.vim ./nvim/init.vim
    cp ~/.tmux.conf ./tmux.conf
    cp ~/.config/nvim/coc-settings.json ./nvim/coc-settings.json

    # update git
    git add *
    git commit -m "auto prepare the config files"
    git push
  else
   printf '%s\n' "wrong input"
   exit 1
  fi
fi

