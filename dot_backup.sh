#!/bin/bash

# Define an array of dotfile paths and the backup directory
DOTFILES=(
    "$HOME/.config/nvim"
    "$HOME/.vimrc"
    "$HOME/.bash_aliases"
    "$HOME/.bash_profile"
    "$HOME/.bashrc"
    "$HOME/.gitconfig"
    "$HOME/.themes"
    "$HOME/.local/share/fonts"
)

BACKUP_DIR="$HOME/utility/dotfiles"
REPO_URL="https://github.com/sahilkamate03/dotfiles.git"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Function to backup a dotfile
backup_dotfile() {
    local file="$1"
    local dest="$BACKUP_DIR/$(basename "$file")"
    cp -R "$file" "$dest"
    echo "Backed up $file to $dest"
}

# Backup dotfiles
backup_dotfiles() {
    for dotfile in "${DOTFILES[@]}"; do
        if [ -e "$dotfile" ]; then
            backup_dotfile "$dotfile"
        else
            echo "Dotfile $dotfile not found."
        fi
    done
}

# Clone or update the Git repository
clone_or_update_repo() {
    if [ -d "$DOTFILES_DIR/.git" ]; then
        echo "Updating existing dotfiles repository..."
        (cd "$DOTFILES_DIR" && git pull origin master)
    else
        echo "Cloning dotfiles repository..."
        git clone "$REPO_URL" "$DOTFILES_DIR"
    fi
}

# Main execution
backup_dotfiles
clone_or_update_repo

# Add and commit changes to the repository
(cd "$DOTFILES_DIR" && git add .)
(cd "$DOTFILES_DIR" && git commit -m "Updated dotfiles $(date +'%Y-%m-%d %H:%M:%S')")
(cd "$DOTFILES_DIR" && git push origin main)

echo "Dotfiles backup and Git update complete!"
