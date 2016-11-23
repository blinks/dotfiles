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
plugins=(git taskwarrior vi-mode)

# User configuration

export PATH=$HOME/bin:$HOME/homebrew/bin:/usr/local/bin:$PATH
export PATH=$HOME/Development/go_appengine:$PATH
export PATH=$HOME/.gem/ruby/2.0.0/bin:$PATH
export PATH=$PATH:$HOME/anaconda/bin
# export MANPATH="/usr/local/man:$MANPATH"
export GOPATH=$HOME/.gocode

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'
alias vim=$EDITOR
alias vi=$EDITOR
alias t=task

# The next line updates PATH for the Google Cloud SDK.
source '/Users/blinks/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/blinks/google-cloud-sdk/completion.zsh.inc'
