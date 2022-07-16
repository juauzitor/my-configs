#!/usr/bin/env bash
# script: organizador
# describe: A simple shell script to organize files and clean the downloads directory
# date: 15/07/2022
# author: João Vitor Mendes Pinto dos Santos <joao.vitor.mendes.pinto@gmail.com>
# github: https://github.com/juauzitor
# version: 0.0.1

# Arrays
appsflathub=(us.zoom.Zoom org.kde.gwenview com.github.unrud.VideoDownloader io.github.Soundux org.gtk.Gtk3theme.Adwaita-dark org.kde.KStyle.Adwaita)

appspacman=(git base-devel go qbitorrent chrome-gnome-shell cmake flatpak gnome-tweaks gnome-themes-extra gnome-shell-extensions gnome-tweaks lua51-filesystem lua-filesystem neofetch p7zip stremio unrar vlc heroku-cli snapd)

pacman (){
    sudo pacman -Syu
    for package in ${appspacman[@]}; do
        sudo pacman -S "$package" --noconfirm 
    done
}
flatpak-install (){
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    for package in ${appsflathub[@]}; do
        flatpak install flathub "$package" -y
    done
    
}
yay-setup (){
    git clone https://aur.archlinux.org/yay.git $HOME/Documents/build/yay
    cd $HOME/Documents/build/yay
    makepkg -si
}
neovim (){
    git clone https://github.com/juauzitor/my-configs.git $HOME/Documents/projects/my-configs
    cp -r $HOME/Documents/projects/my-configs/nvim 
}
folders (){
    mkdir -p $HOME/Documents/build
    mkdir -p $HOME/Documents/projects
    mkdir -p $HOME/.config/nvim
    mkdir -p $HOME/.local/bin
    mkdir -p $HOME/Programs
}

folders
pacman
yay-setup
flatpak-install
neovim
