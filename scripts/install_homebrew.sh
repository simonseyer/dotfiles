if ! command -v brew &>/dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # Make brew available in current shell session
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
