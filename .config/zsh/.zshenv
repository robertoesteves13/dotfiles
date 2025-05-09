export EDITOR="nvim"
export VISUAL="nvim"

export MANROFFOPT="-c"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/home/roberto/.bun/_bun" ] && source "/home/roberto/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Avoid nesting nvim instances
if [[ "$TERM" == "xterm-256color" ]]; then
  export NEOVIM_EDITOR="nvr"
else
  export NEOVIM_EDITOR="nvim"
fi

# ZVM
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"

eval $(opam env)
eval "$(zoxide init zsh)"
eval "$(direnv hook zsh)"
