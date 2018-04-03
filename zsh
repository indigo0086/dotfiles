# If you come from bash you might have to change your $PATH.
NPM_PACKAGES="${HOME}/.npm-packages"
typeset -U path
path+=($NPM_PACKAGES)
path+=($NPM_PACKAGES/bin)
path+=($HOME/bin)
path+=(/usr/local/bin)
path+=($HOME/.yarn/bin)
path+=($HOME/.cask/bin)


# export PATH=$NPM_PACKAGES:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/indigo0086/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow git-flow-completion tmux tmuxinator gitfast debian encode64 lein wd)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias spotify="/usr/bin/spotify --force-device-scale-factor=2"
alias keygen="ssh-keygen -t rsa -b 4096 -C"
alias network-restart="sudo service network-manager restart"
alias rmrf='rm -rf'
alias tlp-check='tlp-stat -s'
alias tlp-start='tlp-start'

export TERM=xterm-256color
export NVM_DIR="$HOME/.nvm"
export PYTHON_USERBASE=~/python_userbase
export EDITOR="ec"
export VISUAL="ec"

alias ec="emacsclient -c -n -a ''"
alias et="emacsclient -t -a ''"
alias emacsbare="emacs -nw -Q --eval \"(load-theme 'misterioso)\""
alias eb="emacsbare"
alias arcadia="git clone https://github.com/arcadia-unity/Arcadia.git"

source ~/bin/tmuxinator.zsh

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
