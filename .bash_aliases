#!/bin/bash

alias ll="ls -alh"
alias la="ls -a"
alias l="ls -CF"

alias sless="sudo less"

alias sapt-get="sudo apt-get"
alias saptitude="sudo aptitude"
alias se="sudoedit"
alias sew="sudoedit -u www-data"
alias siptables="sudo iptables"

alias cheese="source ~/.bashrc"

alias sudow="sudo -u www-data"

alias up="cd .."

alias tbsql="mysql -u balance -h troll"
alias gbsql="mysql -u balance -h goblin"

alias dv="ssh dv-121-11"

function cdmkdir() { 
  [ -n "$1" ] && mkdir -p "$1" && cd "$1" ;
}
