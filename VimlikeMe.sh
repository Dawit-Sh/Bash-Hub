#!/bin/bash 

# A script to setup the same vim configuration as Dawit-Sh a.k.a Night King 

usrr=$USER
ve=vim 
gc=git 
check=~/.vimrc

echo "Caution ⚠️, Script will remove any existing vim configuration make sure to back up :)"
echo
echo "Hello $usrr, Supported package managers(apt,zypper,pacman,xbps,dnf)"
read -p 'Package Manager:' packm

if command -v $gc $ve
then
    echo "Mission is a Go!"
    rm -rf $check
    curl --silent https://raw.githubusercontent.com/Dawit-Sh/Vimrc/main/vimrc >> vimrc 
    mv vimrc .vimrc && mv .vimrc ~
    curl --silent -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    echo
    echo "Dear $usrr, Vim with Night King config has been successfully installed"
    echo "$usrr, run :PlugInstall on the first Vim run to get the plugins working"
    exit 0
else 
    sudo $packm update >> update.log && sudo $packm install -y git vim >> install.log
    curl --silent https://raw.githubusercontent.com/Dawit-Sh/Vimrc/main/vimrc >> vimrc 
    mv vimrc .vimrc
    mv .vimrc ~
    curl --silent -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    rm -rf install.log update.log 
    echo
    echo "Dear $usrr, Vim with Night King config has been successfully installed"
    echo "$usrr, run :PlugInstall on the first Vim run to get the plugins working"
    exit 0
fi 