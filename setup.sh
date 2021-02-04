#!/usr/bin/env bash

if [ ! -d "~/bin" ]; then
  mkdir -p ~/bin
fi

cp color ~/bin

if [ ! -f ~/.zshrc ]; then
    touch ~/.zshrc
fi

echo 'export PATH=$PATH":$HOME/bin"' >> ~/.zshrc