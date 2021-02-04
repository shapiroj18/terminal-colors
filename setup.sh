if [ ! -d "~/bin" ]; then
  mkdir -p ~/bin
fi

cp randombackground ~/bin

if [ ! -f ~/.zshrc ]; then
    touch ~/.zshrc
fi

echo 'export PATH=$PATH":$HOME/bin"' >> ~/.zshrc