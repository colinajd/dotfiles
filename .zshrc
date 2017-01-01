#Docker
export DOCKER_HOST=tcp://0.0.0.0:2375
export PATH=$PATH:$PATH:~/bin:/mnt/c/Users/ColinAJD/AppData/Local/atom/bin

#Aliases
alias atom='wstart atom'
alias dup='wstart docker-compose up -d'
alias ddown='docker-compose down'
alias dbuild='wstart docker-compose build'

#ZPLUG
source ~/.zplug/init.zsh

zplug mafredri/zsh-async, from:github, defer:0  # Load this first
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

#zsh syntax highlighting
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Source Plugins and add commands to $PATH
zplug load --verbose
