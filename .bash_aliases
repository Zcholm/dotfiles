# Sudo last command:
alias fuck='printf "Ok, since you ask so nice:\n" && sleep 1 && echo sudo $(history -p !!) && sleep 0.5 && sudo $(history -p !!)'

# List command:
alias list='ls -lah --time-style=long-iso'

# Xmodmap keyboard mapping:
alias xmod='xmodmap ~/.Xmodmap'

# Shorts for a lot of often used things:
alias v='vim'
alias g='git'
alias gs='git status'
alias gg='git graph'
alias gp='git pull'
alias sv='sudo vim'
alias gl='git log --oneline'
alias gvdf='git vdiff'
alias ggvdf='git gvdiff'

