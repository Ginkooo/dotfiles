#!/bin/sh

RED='\033[0;31m'
BLUE='\033[0;32m'
NC='\033[0m'

function is_installed
{
    if [ ! "$(pacman -Qs $1)" ]; then
        printf "$1 ${RED}not installed${NC}\n"
    fi
}

function check
{
    is_installed atool
    is_installed ctags
    is_installed expac
    is_installed fd
    is_installed feh
    is_installed fzf
    is_installed git
    is_installed gtk2
    is_installed gtk3
    is_installed htop
    is_installed i3lock-color
    is_installed neofetch
    is_installed newsboat
    is_installed obsidian-2-theme
    is_installed obsidian-icon-theme
    is_installed okular
    is_installed p7zip
    is_installed pavucontrol
    is_installed playerctl
    is_installed polybar
    is_installed pulseaudio
    is_installed pulseaudio-equalizer
    is_installed pulseaudio-equalizer-ladspa
    is_installed python-i3-py
    is_installed qt5-styleplugins
    is_installed qt5ct
    is_installed qutebrowser
    is_installed ranger
    is_installed redshift
    is_installed rofi
    is_installed scrot
    is_installed stow
    is_installed sxiv
    is_installed the_silver_searcher
    is_installed trizen
    is_installed ttf-anonymous-pro
    is_installed vim
    is_installed weechat
    is_installed wireless_tools

    echo "CONTINUE? (Y/N)"
    read ANSWER

    if [[ "$ANSWER" =~ ^(no|n)$ ]]; then
        exit
    fi

    echo
}

function common
{
    pushd common > /dev/null

    echo "-- GTK"
    stow -Rt ~ gtk

    echo "-- hTop"
    stow -Rt ~ htop

    echo "-- Newsboat"
    stow -Rt ~ newsboat

    echo "-- Qt5ct"
    stow -Rt ~ qt5ct

    echo "-- Qutebrowser"
    stow -Rt ~ qutebrowser

    echo "-- Ranger"
    stow -Rt ~ ranger

    echo "-- Redshift"
    stow -Rt ~ redshift

    echo "-- Rofi"
    stow -Rt ~ rofi

    echo "-- Termite"
    stow -Rt ~ termite

    echo "-- Vim"
    stow -Rt ~ vim

    echo "-- WeeChat"
    stow -Rt ~ weechat

    echo "-- zsh"
    stow -Rt ~ zsh

    popd > /dev/null
}

function mio
{
    pushd mio > /dev/null

    echo "-- i3"
    stow -Rt ~ i3

    echo "-- Polybar"
    stow -Rt ~ polybar

    popd > /dev/null
}

function lain
{
    pushd lain > /dev/null

    echo "-- i3"
    stow -Rt ~ i3

    echo "-- Polybar"
    stow -Rt ~ polybar

    popd > /dev/null
}

function kurisu
{
    pushd kurisu > /dev/null

    echo "-- i3"
    stow -Rt ~ i3

    echo "-- Polybar"
    stow -Rt ~ polybar

    popd > /dev/null
}

function asuka
{
    pushd common > /dev/null

    echo "-- hTop"
    stow -Rt ~ htop

    echo "-- Weechat"
    stow -Rt ~ weechat

    popd > /dev/null
    pushd asuka > /dev/null

    echo "-- zsh"
    stow -Rt ~ zsh

    popd > /dev/null
}

sudo echo

check

HOSTNAME="$(hostname)"

case "$HOSTNAME" in
    mio)
        printf " - ${RED}Common${NC}\n"
        common
        printf " - ${RED}Main${NC}\n"
        mio
        ;;

    lain)
        printf " - ${RED}Common${NC}\n"
        common
        printf " - ${RED}Lain${NC}\n"
        lain
        ;;

    kurisu)
        printf " - ${RED}Common${NC}\n"
        common
        printf " - ${RED}Kurisu${NC}\n"
        kurisu
        ;;

    asuka)
        printf " - ${RED}Asuka${NC}\n"
        asuka
        ;;

    *)
        printf "Hostname unknown.${NC}\n"
        exit
        ;;
esac
