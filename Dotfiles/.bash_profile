#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ $(fgconsole 2>/dev/null) == 1 ]] && 
	exec startx --vt1




export EDITOR="vim"
export VISUAL="vim"
export READER="zathura"
export NNN_OPENER="xdg-open"
export NNN_PLUG='f:finder;t:nmount;v:imgview;n:nuke;x:_chmod +x $nnn;p:-_less -iR $nnn*'


