#!/bin/bash
# 2022 Dec 30 (c) Maciej Bromirski

# Copy Configuration Files
echo "Copying Configurations"
cp .dotfile $HOME/
cp .gitconfig $HOME/
cp .pylintrc $HOME/
cp .pypirc $HOME/
cp neofetch.conf $HOME/.config/neofetch/config.conf
cp ssh.conf $HOME/.ssh/config

# Install Brew
echo "Installing and Updating Brew"
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

# Install Brew Formulae
echo "Installing Brewfile"
brew bundle --file Brewfile-* --no-lock

# Setup ZSH
echo "Setting up ZSH"
if ! [ -d "$HOME/.zsh" ]; then
    mkdir $HOME/.zsh
fi
cp zsh/.zshrc $HOME/.zsh/.zshrc
if ! [ -f "$HOME/.zshrc" ]; then
	ln -s $HOME/.zsh/.zshrc $HOME/.zshrc
fi
if ! [ -f "$HOME/.zsh/.zsh_history" ]; then
	touch $HOME/.zsh/.zsh_history
fi

# Outro
echo "Remember to import your gpg and ssh keys"
echo "Also remember to copy your ntfy user:password to $HOME/.dotfile and your pypi token to $HOME/.pypirc"
