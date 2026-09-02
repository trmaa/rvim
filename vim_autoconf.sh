#!/usr/bin/env bash

main() {
	path="source /home/$(whoami)/.vim/main.vim"
	echo "$path" > ~/.vimrc
	vim +PlugInstall +qall
}

main
