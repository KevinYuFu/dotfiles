#!/bin/bash


# usage
usage() {
cat << EOF

usage: $0 --update 

Setup Stow
   --mac     -m

EOF
}

OS=ubuntu

# main
while :; do
  case $1 in
    -h|-\?|--help)
      usage
      exit
      ;;
    -m|--mac)
      OS=mac
      ;;
    --)              # End of all options.
      shift
      break
      ;;
    -?*)
      printf 'WARN: Unknown option (ignored): %s\n' "$1" >&2
      ;;
    *)               # Default case: If no more options then break out of the loop.
      break
  esac
  shift
done

if [ ${OS}  = ubuntu ]; then
  sudo apt-get install -y stow
elif [ ${OS}  = mac ]; then
  brew install stow
fi

stow alacritty
stow alacritty
stow bash
stow git
stow nvim
stow tmux
stow zsh
stow nerd-font
