# LOAD THE DEFAULT .profile 
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 

# LOAD RVM INTO THE SHELL *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# COLORS
export PATH="/usr/local/mysql/bin:$PATH"
export CLICOLOR=1

LS_COLORS=$LS_COLORS:'di=0;36:' ; export LS_COLORS

# ALIAS
alias ll="ls -la"
alias js="repl.history"

# LOAD NODE
source ~/.nvm/nvm.sh
nvm use v5.2.0

# FIND WHICH BRANCH IM CURRENTLY ON AND DISPLAY
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[1;32m\]\w\[\e[0;96m\]\$(parse_git_branch)\[\033[00m\] 🍺  "

# GIT AUTO COMPLETE
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash

  fi
