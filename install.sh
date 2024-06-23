#!/bin/bash

packages="zoxide rename neovim stow curl tmux tree"
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt -y install $packages
sudo apt install -y python3.10-venv xclip python3-pip updog
grep 'zoxide' ~/.bashrc || echo 'eval "$(zoxide init bash --cmd cd)"' >> ~/.bashrc
grep 'myfunc' ~/.bashrc || echo 'source ~/dot/myfunc' >> ~/.bashrc
grep 'myalias' ~/.bashrc || echo 'source ~/dot/myalias' >> ~/.bashrc

STOW_FOLDERS=(tmux nvim gitconfig)
for folder in ${STOW_FOLDERS[@]}; do
    echo "stow $folder"
    stow -D $folder
    stow $folder
done

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
# nvm install stable --reinstall-packages-from=current
# git-delta


