#!/usr/bin/env bash

main() {
	cd ~

	mv .vimrc .vimrc.old
	mv .vim/ .vim.old/

	git clone https://github.com/trmaa/rvim.git .vim

	path="source /home/$(whoami)/.vim/main.vim"

	echo "$path" > .vimrc

	vim +PlugInstall +qall

	echo -e "\e[31mConfigurar vim per sudo? y/N\e[0m"
	read perm

	if [[ $perm == 'y' ]]; then
		sudo echo "$path" >> /root/.vimrc
	fi
}

main
