if [ -d "$HOME/.local/bin" ]; then
    export PATH=$HOME/.local/bin:$PATH
fi
if [ -d "$HOME/.local/lib" ]; then
    export LD_LIBRARY_PATH=$HOME/.local/lib:$LD_LIBRARY_PATH
fi

HISTFILE=~/.zhst
HISTSIZE=512
SAVEHIST=2048
setopt beep
setopt PROMPT_SUBST
bindkey -e

alias ls='ls -al --color=auto'
alias grep='grep --color=auto'
# source ~/.alias

export VIRTUAL_ENV_DISABLE_PROMPT=1

PROMPT='%F{#39FF14}┌<%F{#FF3131}$VIRTUAL_ENV_PROMPT%F{#39FF14}>─[%F{#00FFFF}%n%F{#39FF14}]─<%F{#FF3131}%~%F{#39FF14}>%F{#00FFFF}─//[%(?.%F{#39FF14}WILCO, OUT.%F{#ff3131}NEGATIVE|%?)%F{#00FFFF}]%f
%F{#39FF14}└─%F{#FF3131}>>>%f '
