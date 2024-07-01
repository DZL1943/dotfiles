#!/bin/sh

mkdir -p ~/opt && cd "$_"
git clone https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git
cd ohmyzsh/tools
REMOTE=https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git sh install.sh

# git -C $ZSH remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git
# git -C $ZSH pull

zstyle ':omz:lib:theme-and-appearance' gnu-ls yes
omz plugin enable git