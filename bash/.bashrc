PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '
alias awk='gawk'

# Configuration for todo.txt
alias t='./todo.sh -d todo.cfg'
source todo_completion
complete -F _todo t