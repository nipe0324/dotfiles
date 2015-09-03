#!/bin/sh

# TODO: immutable

# vim
rm -rf ~/.vim/bundle
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# zsh
# TODO: peco
ln -sf ~/dotfiles/.zshrc    ~/.zshrc
ln -sf ~/dotfiles/.zprezto  ~/.zprezto

# tmux
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
