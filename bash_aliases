LS_OPTIONS="-F --color=always --show-control-chars"

alias ls='ls $LS_OPTIONS'
alias lsd='ls -d */'

# commands with specific options
alias rm='rm'
alias grep='grep -i -n -R --color'
alias cp='cp -i'
alias mv='mv -i'
alias screen='screen -s /usr/bin/bash'
alias ..='cd ..'
alias gdb='gdb --quiet'
alias cscope='cscope -d'
alias vi='vim'
alias uv4='/cygdrive/c/Keil/UV4/Uv4.exe'

alias prjcreate='~/bin/prjcreate.sh'
alias ll='ls -al'
alias cvi='LANG=zh_CN, LC_ALL=zh_CN vim'
