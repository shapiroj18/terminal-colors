#!/usr/bin/env bash

if [ ! -d "~/bin" ]; then
  mkdir -p ~/bin
fi

rm -rf ~/bin/terminal-colors
git clone https://github.com/shapiroj18/terminal-colors.git ~/bin/terminal-colors

if [ ! -f ~/.zshrc ]; then
    touch ~/.zshrc
fi

if ! grep -q 'export PATH=\$PATH:\$HOME\/bin\/terminal-colors' ~/.zshrc; then 
    echo 'export PATH=$PATH:$HOME/bin/terminal-colors' >> ~/.zshrc
fi