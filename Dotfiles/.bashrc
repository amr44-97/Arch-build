#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return





alias ls='ls --color=auto'
alias n="nnn -Re"
alias i="sudo pacman -S "
alias cc="clear"


PS1='[\u@\h \W]\$ '


#### ICONS INTEGRATION
source ~/.local/share/icons-in-terminal/icons_bash.sh


