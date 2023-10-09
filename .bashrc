parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[$(tput setaf 34)\]\u\[$(tput setaf 40)\]@\[$(tput setaf 46)\]\h \[$(tput setaf 154)\]\W\[\033[1;32m\]\$(parse_git_branch)\[$(tput sgr0)\] \[$(tput sgr0)\]🌴 "


alias cls="clear"
alias build="./build.sh"
