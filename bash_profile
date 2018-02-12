# Ruby
eval "$(rbenv init -)"

# Custom Ink Strap DIR
STRAP_BIN_DIR=~/Documents/git/strap/bin
if [ -d $STRAP_BIN_DIR ]; then
  PATH="$STRAP_BIN_DIR:${PATH}"
fi

# Aliases
alias gogit="cd ~/Documents/git"
alias gb="git branch"
alias gco="git checkout"
alias gcm="git commit --verbose -S -m"
alias gs="git status"
alias gl="git log"
alias gd="git diff --color-words"
alias reload_profile=". ~/.bash_profile"
alias ds_clean='find . -type f -name .DS_Store -print0 | xargs -0 rm'
function mkd {
  mkdir -p "${@}" && cd "${1}";
}

# Terminal rules
set completion-ignore-case on
set show-all-if-ambiguous on
