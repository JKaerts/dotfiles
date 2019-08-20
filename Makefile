bash-win :
	cmd.exe /C "mklink /H %HOME%\.bashrc bash\.bashrc"
	cmd.exe /C "mklink /H %HOME%\.bash_profile bash\.bash_profile"

git-win :
	cmd.exe /C "mklink /H %HOME%\.gitconfig git\.gitconfig"
	cmd.exe /C "mklink /H %HOME%\.gitmessage git\.gitmessage"

cygwin-win :
	cmd.exe /C "mklink /H %HOME%\.minttyrc cygwin\.minttyrc"

vim-win :
	cmd.exe /C "mklink /H %HOME%\.vimrc vim\.vimrc"
