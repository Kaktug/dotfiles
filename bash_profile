# Ruby
eval "$(rbenv init -)"

# Custom Ink Strap DIR
STRAP_BIN_DIR=~/Documents/git/strap/bin
if [ -d $STRAP_BIN_DIR ]; then
  PATH="$STRAP_BIN_DIR:${PATH}"
fi

# Aliases
alias open_atom="/usr/local/bin/atom -n $@"
alias gogit="cd ~/Documents/git/"
alias reload_profile=". ~/.bash_profile"
alias ds_clean='find . -type f -name .DS_Store -print0 | xargs -0 rm'
function mkd {
  mkdir -p "${@}" && cd "${1}";
}

# Terminal rules
set completion-ignore-case on
set show-all-if-ambiguous on
