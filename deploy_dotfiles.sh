#!/bin/bash

deploy_bash() {
	for file in '.bash_profile' '.bashrc';
	do
		if [ -f ~/$file ]; then
			rm ~/$file;
		fi;
		cp ./bash/$file ~/$file
	done;
}

deploy_cygwin() {
	cp ./cygwin/.minttyrc ~/.minttyrc
}

deploy_emacs() {
	for file in 'init.el' 'default-changes.el';
	do
		if [ -f ~/.emacs.d/$file ]; then
			rm ~/.emacs.d/$file;
		fi;
		cp ./emacs/$file ~/.emacs.d/$file
	done;
}

deploy_git() {
	for file in '.gitconfig' '.gitmessage';
	do
		if [ -f ~/$file ]; then
			rm ~/$file;
		fi;
		cp ./git/$file ~/$file
	done;
}

deploy_vim() {
	# copy .vimrc
	cp ./vim/.vimrc ~/.vimrc
	# make colors directory if it doesn't exist and copy theme
	if [ ! -d ~/.vim/colors ]; then
		mkdir -p ~/.vim/colors
	cp ./vim/colors/solarized.vim ~/.vim/colors/solarized.vim
}

deploy_bash
deploy_cygwin
deploy_emacs
deploy_git
deploy_vim
