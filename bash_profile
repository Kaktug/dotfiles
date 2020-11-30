# Ruby
eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(pyenv init -)"

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
alias please="sudo"
function mkd {
  mkdir -p "${@}" && cd "${1}";
}

function gitpr {
  local GITPREFIX="PATH_TO_GITHUB_ORG"
  local REPO="$(basename `git rev-parse --show-toplevel`)" >/dev/null 2>&1
  if [[ ! "${REPO}" == "" ]]; then
    local GITBRANCH="$(git branch | grep \* | cut -d ' ' -f2)"
    local PRPATH="${GITPREFIX}${REPO}/pull/new/${GITBRANCH}"
    open "${PRPATH}"
  fi
}

function bitpr {
  local BITPREFIX="PATH_TO_BITBUCKET_ORG"
  local REPO="$(basename `git rev-parse --show-toplevel`)" >/dev/null 2>&1
  if [[ ! "${REPO}" == "" ]]; then
    local BITBRANCH="$(git branch | grep \* | cut -d ' ' -f2)"
    local PRPATH="${BITPREFIX}${REPO}/pull-requests/new?source=${BITBRANCH}&t=1"
    open "${PRPATH}"
  fi
}

# Terminal rules
set completion-ignore-case on
set show-all-if-ambiguous on

# export PATH="$HOME/.cargo/bin:$PATH"
# export PATH="/usr/local/sbin:$PATH"
# This will set the LANG variable for your environment
export LANG=en_US.UTF-8
