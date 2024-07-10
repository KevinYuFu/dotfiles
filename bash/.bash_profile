if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad

#export PS1="\[\e[38;5;051;48;5;233m\]\u@\h \W $ \[\e[0m\]"

# Custom Commands
# =========================/
alias vi="nvim" # nvim
alias py="python3" # python
alias gith="history | grep git" # git history
alias vimrc="vi ~/.vimrc" # edit vimrc
alias cloud="~/goto-cloud.sh"
alias unreal="~/UnrealEngine-release/Engine/Binaries/Linux/UnrealEditor"
alias fzf='fzf --preview="bat --color=always {}"'
alias fzfm='fzf -m --preview="bat --color=always {}"'
alias vii='vi $(fzf)'
alias vmi='vi $(fzfm)'


# Parallel Commands
# =========================/
alias j="just"
alias b="just build"
alias db="psql -h localhost -p 5433 -U postgres -d colony"
alias dockfix="docker compose up -d"
alias dockstart="docker compose up -d google-pubsub --force-recreate"
alias dbb="just migrate"
alias dbr="just reset-database"
alias fmt="jst fmt"
alias lint="just lint"
alias migrate="just migrate"
alias "pull"="git pull && npm install"

# Source fzf
source <(fzf --zsh)

# Run `ls` after `cd`
function cd() { builtin cd "$@" && ls; }

# Start Tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi


## Parallel Stuff
# FNM Node.js manager
eval "$(fnm env --use-on-cd)"
# asdf install
. "$HOME/.asdf/asdf.sh"
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kaifuzen/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kaifuzen/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/kaifuzen/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kaifuzen/google-cloud-sdk/completion.zsh.inc'; fi
# postgresql
export PATH="/opt/homebrew/Cellar/postgresql@15/15.7/bin/:$PATH"
