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
	cp ./vim/.vimrc ~/.vimrc
}

deploy_bash
deploy_emacs
deploy_git
deploy_vim
