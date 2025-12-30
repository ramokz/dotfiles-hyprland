# Auto Start Sway
export SDL_VIDEODRIVER=wayland
export MOZ_ENABLE_WAYLAND=1
export TERM=xterm-256color
# export GTK_THEME=Catppuccin-blue:dark
#[ "$(tty)" = "/dev/tty1" ] && exec sway
 [ "$(tty)" = "/dev/tty1" ] && exec start-hyprland
# [ "$(tty)" = "/dev/tty1" ]
export FLYCTL_INSTALL="/home/marcus/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"


GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx

# Created by newuser for 5.8
#source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# fpath=(~/.zsh/zsh-completions/src $fpath)

# Default configs
export EDITOR="nvim"

# Changes location of starship config files
export STARSHIP_CONFIG=~/.config/starship/config.toml

# Zoxide cd Search
# eval "$(zoxide init zsh)"

eval "$(starship init zsh)"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marcus/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# bun completions
[ -s "/home/marcus/.bun/_bun" ] && source "/home/marcus/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/marcus/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
