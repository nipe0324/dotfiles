#!/bin/sh

# TODO: immutable

# vim
rm -rf ~/.vim/bundle
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc

# zsh
# TODO: peco
# mkdir zsh_orig && mv zshmv .zlogin .zlogout .zprofile .zshenv .zshrc .zprezto zsh_orig 
# git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# setopt EXTENDED_GLOB
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#	  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#	done
#done
#rm -f ~/.zshrc
#ln -sf ~/dotfiles/.zshrc ~/.zshrc

# tmux
rm -f ~/dotfiles/.tmux.conf
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
