#!/bin/bash

deploy_emacs() {
	for file in 'init.el' 'default-changes.el';
	do
		if [ -f ~/.emacs.d/$file ]; then
			rm $HOME/.emacs.d/$file;
		fi;
		cp ./emacs/$file ~/.emacs.d/$file
	done;
}

deploy_emacs