# ============================================================
# .zprofile — login shell configuration
# Loaded once per login session (every new window on macOS)
# ============================================================

# ------------------------------------------------------------
# Homebrew
# Must come first so all brew-installed tools are on PATH
# ------------------------------------------------------------
eval "$(/opt/homebrew/bin/brew shellenv)"

# ------------------------------------------------------------
# PATH extensions
# ------------------------------------------------------------
# JetBrains Toolbox CLI scripts
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

# Visual Studio Code CLI (code command)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
