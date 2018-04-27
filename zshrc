#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Personal settings
if [ -e ~/.secrets ]; then
  source ~/.secrets/zsh_env
fi

if [ -e ~/.aliases ]; then
  source ~/.aliases
fi

alias python=python3

#Change ls colours
LS_COLORS="ow=01;36;40" && export LS_COLORS

##make cd use the ls colours
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
##compinit

# Powerlevel9K config
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable_joined)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time vcs)
POWERLEVEL9K_MODE='nerdfont-complete'
