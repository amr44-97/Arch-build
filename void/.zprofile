emulate sh -c 'source /etc/profile'

[[ $(fgconsole 2>/dev/null) == 1 ]] && 
        exec startx --vt1



export EDITOR="vim"
export VISUAL="vim"
export READER="zathura"
export NNN_OPENER="xdg-open"
export NNN_PLUG="n:nuke"


prime-run blender

