#!/bin/sh
set -x
alias cp='gcp'

bak_zsh () {
    cp ~/.zprofile zsh/.zprofile~
    cp ~/.zshrc zsh/.zshrc~
    cp ~/.env zsh/.env~
    cp ~/.alias zsh/.alias~
}

bak_vim(){
    cp ~/.vimrc vim/.vimrc~
}

bak_emacs(){
    cp ~/.emacs.d/init.el emacs/init.el~
}

bak_vscode(){
    cp ~/Library/Application\ Support/Code/User/settings.json vscode/settings.json~
    cp ~/Library/Application\ Support/Code/User/keybindings.json vscode/keybindings.json~
}

bak_iterm2(){
    cp ~/Library/Preferences/com.googlecode.iterm2.plist iterm2/com.googlecode.iterm2.plist~
    cp ~/Library/Application\ Support/iTerm2/DynamicProfiles/Profiles.json iterm2/Profiles.json~
}

bak_tmux(){
    cp ~/.tmux.conf tmux/.tmux.conf~
}

bak_alacritty(){
    cp ~/.config/alacritty/alacritty.yml alacritty/alacritty.yml~
}

bak_git(){
    cp ~/.gitconfig git/.config~
}

bak_nodejs(){
    cp ~/.npmrc nodejs/.npmrc~
}

bak_python(){
    cp ~/.config/pip/pip.conf python/pip.conf~
    cp ~/.condarc python/.condarc~
}

bak_rust(){
    cp ~/.cargo/config rust/config~
}

bak_hammerspoon(){
    cp ~/.hammerspoon/init.lua hammerspoon/init.lua~
}

bak_sleepwatcher(){
    cp ~/.sleep sleepwatcher/.sleep~
}

bak_rime(){
    cp -r ~/Library/Rime/. rime/
}

for arg in "$@"; do bak_"$arg"; done
