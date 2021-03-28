# ~/.zprofile

emulate sh -c 'source /etc/profile'

[[ $(fgconsole 2>/dev/null) == 1 ]] &&
    exec startx --vt1

export EDITOR="vim"
export VISUAL="vim"
export READER="zathura"
export NNN_OPENER="xdg-open"
export NNN_PLUG="n:nuke;v:preview-tabbed"
export PAGER="less -R"

export NNN_FIFO='/tmp/nnn.fifo'
