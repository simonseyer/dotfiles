# ============================================================
# .zshrc — interactive shell configuration
# Loaded for every new terminal tab/window
# ============================================================

# ------------------------------------------------------------
# Oh My Zsh
# ------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="simple"

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 30 # days

plugins=(
  git
  kubectl
)

source "$ZSH/oh-my-zsh.sh"

# ------------------------------------------------------------
# Plugins (Homebrew-managed)
# Loaded after oh-my-zsh so they take precedence
# ------------------------------------------------------------
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ------------------------------------------------------------
# Editor
# ------------------------------------------------------------
export EDITOR="subl -w"
export KUBE_EDITOR="subl -w"

# ------------------------------------------------------------
# Brew
# ------------------------------------------------------------
alias brewdump='brew bundle dump --file=- | grep -v -f "$HOME/.dotfiles/Brewignore" > "$HOME/.dotfiles/Brewfile"'

# ------------------------------------------------------------
# Aliases
# ------------------------------------------------------------
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# ------------------------------------------------------------
# VS Code shell integration
# Enables terminal features inside VS Code (links, exit codes)
# ------------------------------------------------------------
[[ "$TERM_PROGRAM" == "vscode" ]] && source "$(code --locate-shell-integration-path zsh)"
