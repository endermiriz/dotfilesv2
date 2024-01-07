#!/bin/bash
shopt -s dotglob

# Set the source directory to the current directory
src_dir=$(pwd)

# Set the target directories
config_dir="$HOME/.config"
local_share_dir="$HOME/.local/share"

# Loop through all files in the current directory
for file in "$src_dir"/*; do
    # Extract the filename from the full path
    filename=$(basename "$file")

    # Skip git files
    if [[ "$filename" == .git* ]]; then
        echo "Skipped git file: $filename"
        continue
    fi

    # Set the destination path for the symbolic link
    if [[ "$filename" == .* ]]; then
        # If the file starts with a dot, link it to the home directory
        link_path="$HOME/$filename"
    elif [ "$filename" == "fonts" ] || [ "$filename" == "applications" ]; then
        # If the file is named "fonts" or "applications", link it to ~/.local/share/
        link_path="$local_share_dir/$filename"
    else
        # Otherwise, link it to the ~/.config directory
        link_path="$config_dir/$filename"
    fi

    # Check if the link already exists, skip if it does
    if [ ! -e "$link_path" ]; then
        # Create the symbolic link
        ln -s "$file" "$link_path"
        echo "Created symbolic link: $link_path"
    else
        echo "Skipped existing link: $link_path"
    fi
done

echo "Symbolic link creation completed."
