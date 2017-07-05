export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="nanotech"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew git vi-mode)

# User configuration

source $HOME/.profile
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export GOPATH=$HOME/.gocode

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'
alias vim=$EDITOR
alias vi=$EDITOR

# Homebrew stuff
export PATH=$HOME/homebrew/bin:$PATH
export LD_LIBRARY_PATH=$HOME/homebrew/lib:$LD_LIBRARY_PATH
export HOMEBREW_NO_ANALYTICS=1
