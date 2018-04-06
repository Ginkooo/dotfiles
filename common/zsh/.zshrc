export ZSH=/usr/share/oh-my-zsh/
export ZSH_CUSTOM=$HOME/.zsh
export CC=clang
export CXX=clang++
export VISUAL=vim

export FZF_DEFAULT_COMMAND='fd --type f'

ZSH_THEME="glamhoth"

HYPER_INSENSIVITY="false"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

eval $(dircolors -b ~/.dircolors)

alias mkdir='mkdir -pv'
alias ping='ping -c 5'

alias l='ls -al --color'
alias ..='cd ..'
alias c='clear'
alias pac='sudo pacman -S'
alias aur='trizen -S --noconfirm'
alias doot='sudo pacman -Syyu'
alias paclean='sudo pacman -Rns $(pacman -Qtdq)'
alias paclist='expac --timefmt="%Y-%m-%d %T" "%l\t%n" | sort'

alias own='sudo chown -R glamhoth:glamhoth'
alias mod='sudo chmod -R 777'
alias weather='curl -s wttr.in/Lublin | head -7'
