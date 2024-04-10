#!/bin/bash

packages="zoxide rename neovim stow curl tmux tree"
os=$(uname -s)

if [[ $os == "Linux" ]]; then
    config="bashrc"
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt update
    sudo apt -y install $packages
    sudo apt install -y python3.10-venv xclip python3-pip updog
    grep 'zoxide' ~/.${config} || echo 'eval "$(zoxide init bash)"' >> ~/.${config}
    grep 'myfunc' ~/.${config} || echo 'source ~/dot/myfunc' >> ~/.${config}
elif [[ $os == "Darwin" ]]; then
    config="zshrc"
    brew install --HEAD neovim
    brew install $packages
    grep 'zoxide' ~/.${config} || echo 'eval "$(zoxide init zsh)"' >> ~/.${config}
else
    echo "OS is not recognized."
    exit 1
fi

STOW_FOLDERS="tmux,nvim,gitconfig"
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g"); do
    echo "stow $folder"
    stow -D $folder
    stow $folder
done

grep 'myalias' ~/.${config} || echo 'source ~/dot/myalias' >> ~/.${config}

# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
# nvm install stable --reinstall-packages-from=current
# git-delta


