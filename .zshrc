# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=" "
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="$ "

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Disable hostname completion
zstyle -e ':completion:*' hosts /etc/empty-hosts

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="false"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="false"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Python Virtualenv
export WORKON_HOME=$HOME/.virtualenvs/
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

# alias mkvirtualenv3='mkvirtualenv --python=/usr/local/bin/python3'

# NVM via homebrew
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pip python macos colored-man-pages)

source $ZSH/oh-my-zsh.sh

export PATH=/opt/homebrew/opt/python@3.11/libexec/bin:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:$HOME/bin:/opt/local/bin:$HOME/.cargo/bin:$HOME/Library/Mine

# haskell
# ghcup-env
[ -f "/Users/pope/.ghcup/env" ] && . "/Users/pope/.ghcup/env"

# sublime text
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

ssh-add --apple-use-keychain ~/.ssh/github_key

export EDITOR='emacs'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# enable homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

#Brewby rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
#source $HOME/.zshenv
eval "$(rbenv init - zsh)"

export TODOTXT_DEFAULT_ACTION=ls
alias todo="todo.sh -c"