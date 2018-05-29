#zmodload zsh/zprof
# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh
if grep -q Microsoft /proc/version; then
    unsetopt BG_NICE # Do not attempt to use "nice" if on WSL (it's unsupported)
fi

# zplug "zplug/zplug", hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "modules/history", from:prezto
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

# Install packages that have not been installed yet
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  else
    echo
  fi
fi

zplug load
source ~/.zshenv

zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' separate-sections 'yes'
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

# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case-insensitive matching
#zprof
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

