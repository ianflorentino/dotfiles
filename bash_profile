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
alias vi='nvim'
alias st='git status'
alias cm='git commit -m'
alias co='git checkout'
alias cob='git checkout -b'
alias br='git branch'
alias lg='git log'
alias diff='git diff'
alias ys='yarn && yarn start'

# LOAD NVM & NODE
export NODE_PATH="$HOME/local/node/bin:/usr/local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# FIND WHICH BRANCH IM CURRENTLY ON AND DISPLAY
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[1;32m\]\w\[\e[0;96m\]\$(parse_git_branch)\[\033[00m\] 🍺  "

# GIT AUTO COMPLETE
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
