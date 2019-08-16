# Ruby
eval "$(rbenv init -)"

# Custom Ink Strap DIR
# if [ -d $STRAP_BIN_DIR ]; then
  #PATH="$STRAP_BIN_DIR:${PATH}"
#fi

# Aliases
eval $(thefuck --alias ack)
alias rockwell="ruby ~/Library/Services/rockwell_queue_stats.rb"
alias rockwell_snapshot="ruby ~/Library/Services/rockwell_snapshot.rb"
alias rockwell_live="~/Library/Services/rockwell_live.command"
alias gogit="cd ~/Documents/git"
alias gb="git branch"
alias gco="git checkout"
alias gcm="git commit --verbose -S -m"
alias gs="git status"
alias gl="git log"
alias gd="git diff --color-words"
alias vscode="code"
alias reload_profile=". ~/.bash_profile"
alias ds_clean='find . -type f -name .DS_Store -print0 | xargs -0 rm'
function mkd {
  mkdir -p "${@}" && cd "${1}";
}

# Terminal rules
set completion-ignore-case on
set show-all-if-ambiguous on

export PATH="$HOME/.cargo/bin:$PATH"
