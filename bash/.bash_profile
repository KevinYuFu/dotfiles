if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
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

#. "$HOME/.cargo/env"
