# Editor configuration
export EDITOR='vim'

export CLICOLOR=1
export PS1="fabiangroeger\[\e[31m\] \[\e[m\]\[\e[31m\]:\[\e[m\]\[\e[31m\]:\[\e[m\] \[\e[32m\]\w\[\e[m\] \[\e[34m\]»\[\e[m\] "

export LSCOLORS=cxgxfxexbxegedabagacad
alias ls='ls --color'
alias ls='ls -G'

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
force_color_prompt=yes
