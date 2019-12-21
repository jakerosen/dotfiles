#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


PATH=~/go/bin:~/.local/bin:~/.npm/node_modules/.bin:$PATH

alias vi=nvim
alias vim=nvim
alias g=git

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source ~/.ghcup/env

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
  [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
    eval "$("$BASE16_SHELL/profile_helper.sh")"

export DIRENV_LOG_FORMAT=
eval "$(direnv hook bash)"
