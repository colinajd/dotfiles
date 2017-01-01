#Docker
export DOCKER_HOST=tcp://0.0.0.0:2375
export PATH=$PATH:$PATH:~/bin

#Aliases
alias atom='wstart atom'
alias dbuild='wstart docker-compose build'
alias dup='wstart docker-compose up -d'
alias ddown='docker-compose down'

#Digital Ocean
droplets() {
    local action=$1
    local param2=$2
    local param3=$3
    local sshid=5552534

    case $action in
        list )
            command doctl compute droplet list
        ;;
        create )
            case $param2 in
                small )
                    command doctl compute droplet create $param3 --region lon1 --image ubuntu-16-04-x64 --size 512mb --ssh-keys $sshid;;
                medium )
                    command doctl compute droplet create $param3 --region lon1 --image ubuntu-16-04-x64 --size 1gb --ssh-keys $sshid;;
                large )
                    command doctl compute droplet create $param3 --region lon1 --image ubuntu-16-04-x64 --size 2gb --ssh-keys $sshid;;
            esac
        ;;
        delete )
            command doctl compute droplet delete $param2
        ;;
        ssh )
            command doctl compute ssh $param2
        ;;
    esac
}

#ZPLUG
source ~/.zplug/init.zsh

zplug mafredri/zsh-async, from:github, defer:0
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

#common aliases
zplug plugins/common-aliases, from:"oh-my-zsh"

# Source Plugins and add commands to $PATH
zplug load --verbose
