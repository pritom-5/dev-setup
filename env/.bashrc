# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias ..="cd .."
alias ...="cd ../.."

alias obsidian="cd $HOME/Dopbox/obsidian-vault"

function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# Custom prompt configuration
# Displays username@hostname, current directory (folder name in blue), and Git branch (if applicable) in yellow
PS1="\[\033[32m\]\u@\h\[\033[00m\] \[\033[33m\]:\$(parse_git_branch):\[\033[00m\] \[\033[34m\]\w\[\033[00m\]\n> "

