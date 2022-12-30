# ZSH Home
export ZSH=$HOME/.zsh

# History
export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# Themes & Plugins
source $HOME/.dotfiles/zsh/themes/nev.zsh-theme
source $HOME/.dotfiles/zsh/plugins/zsh-git-prompt/zshrc.sh

# Prompt
# Use this when you fix git-prompt
#PROMPT="%B$(username)@$(hostname):$(directory) $(git_super_status)%b $(privileges) "
PROMPT="%B$(username)@$(hostname):$(directory)%b $(privileges) "
RPROMPT=""

# Dotfile
source $HOME/.dotfile
