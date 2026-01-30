# ~/.bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Cargo
. "$HOME/.cargo/env"

# Starship
if [ "$TERM" != "linux" ]
then
  eval "$(starship init bash)"
fi

# Aliases
alias fetch='fastfetch'
alias neofetch='fastfetch'
alias l='eza --icons'
