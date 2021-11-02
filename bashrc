#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

### SELF PS [prompt sign]
exitstatus() {
    if [[ $? == 0 ]]
    then
        printf '\033[1;32m yes \033[0m'
    else
        printf '\033[1;31m no \033[0m'
    fi
}
export PS0='\[\033[0;36m\]Out[\#]:= \[\033[0m\]\n'
export PS1='[\u@\h \w \A] \[\033[1;36m\][\$]\[\033[0m\] [$(exitstatus)]\n\[\033[0;33m\]In[\#]:= \[\033[0m\]'
export PS2=' ~> '

# yarn
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"

eval $(dircolors "$XDG_CONFIG_HOME"/dircolors)

# mysql
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history

# path
PATH=${PATH}:"${HOME}/.local/bin":"${XDG_DATA_HOME}/npm/bin":"${CABAL_DIR}/bin":"${XDG_DATA_HOME}/cargo/bin":"${GEM_HOME}/bin"

# hitokoto (bad netwroks)
# ${HOME}/.local/bin/self-script/hitokoto

# opam configuration
test -r /home/kands/.local/share/opam/opam-init/init.sh && . /home/kands/.local/share/opam/opam-init/init.sh > /dev/null 2> /dev/null || true
