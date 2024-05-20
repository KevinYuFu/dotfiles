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

function cd() { builtin cd "$@" && ls; }


# Start Tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi


## Parallel Stuff
# FNM Node.js manager
eval "$(fnm env --use-on-cd)"
# asdf install
. "/opt/homebrew/opt/asdf/libexec/asdf.sh"
. "/opt/homebrew/opt/asdf/etc/bash_completion.d/asdf.bash"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kaifuzen/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kaifuzen/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/kaifuzen/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kaifuzen/google-cloud-sdk/completion.zsh.inc'; fi
# postgresql
export PATH="/opt/homebrew/Cellar/postgresql@15/15.7/bin/:$PATH"

. "/opt/homebrew/opt/asdf/libexec/asdf.sh"

. "/opt/homebrew/opt/asdf/etc/bash_completion.d/asdf.bash"
