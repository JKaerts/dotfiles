cygwin-win :
	cmd.exe /C "mklink /H %HOME%\.minttyrc cygwin\.minttyrc"

vim-win :
	cmd.exe /C "mklink /H %HOME%\.vimrc vim\.vimrc"
	cmd.exe /C "mklink /H %HOME%\.vim\colors\solarized.vim vim\colors\solarized.vim"
