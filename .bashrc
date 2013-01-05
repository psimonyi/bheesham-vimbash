alias g="git"
alias m="make"
alias gr="grep -v grep | grep "

# ls
alias la="ls -a"
alias sl="la"
alias l="la"
alias s="la"

alias cdh="cd ~"

up(){
	local d=""
	limit=$1
	for ((i=1 ; i <= limit ; i++))
		do
			d=$d/..
		done
	d=$(echo $d | sed 's/^\///')
	if [ -z "$d" ]; then
		d=..
	fi
	cd $d
}

mkcd() {
	if [ $# != 1 ]; then
		echo "Usage: mkcd <dir>"
	else
		mkdir -p $1 && cd $1
	fi
}
