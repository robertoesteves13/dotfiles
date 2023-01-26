# The following lines were added by compinstall
zstyle :compinstall filename '/home/robertolopesesteves/.zshrc'

# Some env vars
export EDITOR="nvim"
export MANROFFOPT="-c"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/flutter/bin:$PATH"

autoload -Uz compinit
fpath+=~/.zfunc
compinit

# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# Colors
autoload -U colors && colors
export CLICOLOR=1
export LSCOLORS=gafacadabaegedabagacad

# Aliases
alias zathura="devour zathura"
alias mpv="devour mpv"

# Prompt
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

# zoxide
eval "$(zoxide init zsh)"

# asdf-vm config
. /opt/asdf-vm/asdf.sh

# pnpm
export PNPM_HOME="/home/roberto/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
