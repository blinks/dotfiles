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
plugins=(git vi-mode)

# User configuration

source $HOME/.profile
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.3.0/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export GOPATH=$HOME/.gocode
export PATH="$GOPATH/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'
alias vim=$EDITOR
alias vi=$EDITOR

# Homebrew stuff
export PATH=$HOME/homebrew/bin:$PATH
export LD_LIBRARY_PATH=$HOME/homebrew/lib:$LD_LIBRARY_PATH
export HOMEBREW_NO_ANALYTICS=1
eval "$(rbenv init - zsh)"  # ruby versioning.

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
