# Editor configuration
export EDITOR='vim'
export PS1='\[\033[1;32m\]\u\[\033[1;32m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;34m\]\$\[\033[0m\] '

# Alias Filepaths
alias home="cd ~"
alias dgit="cd ~/Documents/_git/"
alias dyodel="cd ~/Documents/_git/HSLU/artificial_yodel/music_embedding/"

# Esthetics
export GREP_OPTIONS=' — color=auto'
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
