bash-win :
	cmd.exe /C "mklink /H %HOME%\.bashrc bash\.bashrc"
	cmd.exe /C "mklink /H %HOME%\.bash_profile bash\.bash_profile"
	cmd.exe /C "mklink /H %HOME%\todo.cfg bash\todo.cfg"
	cmd.exe /C "mklink /H %HOME%\todo.sh bash\todo.sh"
	cmd.exe /C "mklink /H %HOME%\todo_completion bash\todo_completion"

git-win :
	cmd.exe /C "mklink /H %HOME%\.gitconfig git\.gitconfig"
	cmd.exe /C "mklink /H %HOME%\.gitmessage git\.gitmessage"

cygwin-win :
	cmd.exe /C "mklink /H %HOME%\.minttyrc cygwin\.minttyrc"

vim-win :
	cmd.exe /C "mklink /H %HOME%\.vimrc vim\.vimrc"
	cmd.exe /C "mklink /H %HOME%\.vim\colors\solarized.vim vim\colors\solarized.vim"
	
