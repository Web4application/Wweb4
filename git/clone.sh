#!/bin/bash
# A script to clone Git repositories

# List of repositories to clone
REPOS=(
    "https://github.com/Kubucoinincs/web4.git"
    "https://github.com/another/repository.git"
)

# Target directory to store cloned repositories
TARGET_DIR="./cloned_repositories"

# Create the target directory if it doesn't exist
mkdir -p $TARGET_DIR

# Loop through the list of repositories and clone them
for REPO in "${REPOS[@]}"; do
    echo "Cloning $REPO into $TARGET_DIR..."
    git clone $REPO $TARGET_DIR/$(basename $REPO .git)
done

echo "All repositories have been cloned."
