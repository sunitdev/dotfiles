#!/usr/bin/env bash

set -e  # Exit immediately on error
set -u  # Treat unset variables as errors
set -o pipefail

# === CONFIGURATION ===
PACKAGES=(
    git
    stow
    zsh
    neovim
    tmux
)

# === FUNCTIONS ===
install_homebrew() {
    if ! command -v brew &>/dev/null; then
        echo "🍺 Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        
        # Add brew to PATH for immediate use
        if [[ "$(uname)" == "Darwin" ]]; then
            echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
            eval "$(/opt/homebrew/bin/brew shellenv)"
        elif [[ "$(uname)" == "Linux" ]]; then
            echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
            eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
        fi
    else
        echo "✅ Homebrew already installed."
    fi
}

install_packages() {
    echo "📦 Installing packages..."
    brew install "${PACKAGES[@]}"
}

update_dotfiles() {
    stow --verbose=1 --target="$HOME" .
}

# === MAIN SCRIPT ===

install_homebrew
install_packages
update_dotfiles

echo "🎉 Setup complete!"

