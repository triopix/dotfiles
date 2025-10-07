#!/bin/bash

# Define the source directory (your dotfiles repository)
DOTFILES_DIR=$(pwd)

# Define the destination directory (your home directory)
HOME_DIR=$HOME

# Create an array of dotfiles to link
# Add all the files you want to link here
DOTFILES=(
  .config/fish/config.fish
  .zshrc
  .gitconfig
)

# Loop through the array and create symbolic links
for file in "${DOTFILES[@]}"; do
  # Get the filename and directory
  filename=$(basename "$file")
  dirname=$(dirname "$file")

  # Create the target directory in the home directory if it doesn't exist
  if [ ! -d "$HOME_DIR/$dirname" ]; then
    echo "Creating directory: $HOME_DIR/$dirname"
    mkdir -p "$HOME_DIR/$dirname"
  fi

  # Remove existing file or link in the home directory if it exists
  if [ -e "$HOME_DIR/$file" ]; then
    echo "Removing existing file or link: $HOME_DIR/$file"
    rm -rf "$HOME_DIR/$file"
  fi

  # Create the symbolic link
  echo "Creating symbolic link: $DOTFILES_DIR/$file -> $HOME_DIR/$file"
  ln -s "$DOTFILES_DIR/$file" "$HOME_DIR/$file"
done

echo "Dotfiles installed successfully."
