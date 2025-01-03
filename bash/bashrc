# === bashrc ===

# === bash: interactive ===
case $- in
*i*) ;;
*) return ;;
esac

# === bash: history ===
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=20000

# === bash: ui ===
PS1='\[\033[01;34m\]\A \[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[01;33m\] $(__git_ps1 "(%s)")\[\033[00m\]> '
PS2='- '
shopt -s checkwinsize

# === bash: completion ===
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -f $HOME/.bash_aliases ]; then
  source $HOME/.bash_aliases
fi

# === defaults ===
export PAGER=less
export EDITOR=vim

# === fzf ===
if type rg &>/dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi
