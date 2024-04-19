#!/bin/bash

# Source and destination directories
source_dir="/Users/ashfaqrahman/config/nvim"
destination_dir="/Users/ashfaqrahman/.config/nvim"

# # Function to sync changes
# sync_changes() {
#     rsync -avz "$source_dir/" "$destination_dir/"
# }

# # Sync initial changes
# sync_changes

# watchman watch-project "$source_dir" && \
# watchman -- trigger "$source_dir" my-trigger -- sync_changes

# while fswatch /Users/ashfaqrahman/config/nvim; do
fswatch -0 "/Users/ashfaqrahman/config/nvim" | while read -d "" event; do
    rsync -avz /Users/ashfaqrahman/config/nvim/ /Users/ashfaqrahman/.config/nvim
done

