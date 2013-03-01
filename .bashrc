# Development tools
alias g="git"
alias m="make"
alias gr="grep -v grep | grep "
alias vi="vim"
alias v="vim"

# ls
alias la="ls -a"
alias sl="la"
alias l="la"
alias s="la"

# Clear the screen
alias cl="clear"
alias clr="clear"
alias cls="clear"

# MISC
alias cdh="cd ~"
alias tm="tmux"

up() {
  for ((i=1; i <= ${1:-1}; i++)); do
    cd ..
  done
}

mkcd() {
  if [ $# != 1 ]; then
    echo "Usage: mkcd <dir>"
  else
    mkdir -p $1 && cd $1
  fi
}
