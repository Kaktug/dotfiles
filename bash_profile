# Ruby
eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(pyenv init -)"

# Custom Ink Strap DIR
STRAP_BIN_DIR=~/Documents/git/strap/bin
if [ -d $STRAP_BIN_DIR ]; then
  PATH="$STRAP_BIN_DIR:${PATH}"
fi

SUB_DIR=~/Documents/git/sub/bin
if [ -d $SUB_DIR ]; then
  eval "$($SUB_DIR/customink init -)"
fi

# Aliases
eval $(thefuck --alias ack)
alias gb="git branch"
alias gco="git checkout"
alias gcm="git commit --verbose -S -m"
alias gs="git status"
alias gl="git log"
alias gd="git diff --color-words"
alias code="codium"
alias reload_profile=". ~/.bash_profile"
alias ds_clean='find . -type f -name .DS_Store -print0 | xargs -0 rm'
alias please="sudo"

function mkd {
  mkdir -p "${@}" && cd "${1}";
}

function gogit {
  local repo="${1}"
  cd "$HOME/Documents/git/${repo}"
}

# Terminal rules
set completion-ignore-case on
set show-all-if-ambiguous on

export BASH_SILENCE_DEPRECATION_WARNING=1;

# This will set the LANG variable for your environment
export LANG=en_US.UTF-8

# Generated by Strap - PATH
export PATH=/usr/local/opt/mysql-client@5.7/bin:$PATH

# Generated by Strap - PUMADEV_SOURCE_ENV
export PUMADEV_SOURCE_ENV=0

