# Path to oh-my-zsh installation.
export ZSH="/home/adison/.oh-my-zsh"

# ZSH theme
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Custom ZSH_CUSTOM folder
# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins list
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Fix github commit signing
export GPG_TTY=$(tty)

# Change location of history file
HISTFILE=~/.dotfiles/.zsh_history

# Aliases
alias c='clear'
alias ll='ls -al'
alias sudo='sudo '

alias repos='cd ~/repos'
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias cat='bat'
alias vi='nvim'
alias vim='nvim'
alias ff='fastfetch'

alias zshsrc='source .zshrc'
alias zshrc='nvim ~/.zshrc'
alias bashrc='~/.bashrc'

alias vimplug='nvim ~/.config/nvim/vim-plug/plugins.vim'
alias viminit='nvim ~/.config/nvim/init.vim'
alias cocsettings='nvim ~/.config/nvim/coc-settings.json'
alias coccfg='nvim ~/.config/nvim/plug-config/coc.vim'

alias rm-orp='sudo pacman -Qtdq | sudo pacman -Rns -'

alias shutdown='shutdown now'
