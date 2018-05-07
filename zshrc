#zmodload zsh/zprof
# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

# Essential
source ~/.zplug/init.zsh

# zplug "zplug/zplug", hook-build:'zplug --self-manage'
# zplug "zsh-users/zsh-syntax-highlighting"
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting"
# zplug "zsh-users/zsh-history-substring-search"

# Install packages that have not been installed yet
#if ! zplug check --verbose; then
#  printf "Install? [y/N]: "
#  if read -q; then
#    echo; zplug install
#  else
#    echo
#  fi
#fi

zplug load
source ~/.zshenv

# Load other files
# Personal settings
if [ -e ~/.secrets ]; then
  source ~/.secrets/zsh_env
fi

if [ -e ~/.aliases ]; then
  source ~/.aliases
fi

#Change ls colours
LS_COLORS="ow=01;36;40" && export LS_COLORS
##make cd use the ls colours
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit

#zprof
