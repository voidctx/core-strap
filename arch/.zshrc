git_branch() {
  git branch --show-current 2>/dev/null
}

HISTFILE=~/.zhst
HISTSIZE=128
SAVEHIST=1024
bindkey -e

# --- GPG TTY ---
export GPG_TTY=$(tty)

setopt PROMPT_SUBST
export VIRTUAL_ENV_DISABLE_PROMPT=1
PROMPT='%F{#39FF14}┌<%F{#FF3131}$VIRTUAL_ENV_PROMPT%F{#39FF14}>─[%F{#00FFFF}%n%F{#39FF14}]─<%F{#FF3131}%~%F{#39FF14}>%F{#00FFFF}─//[$(git_branch)]%f
%F{#39FF14}└─%F{#FF3131}>>>%f '
