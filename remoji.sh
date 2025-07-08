#!/bin/bash

EMOJI_FILE="emojis.md"

if [[ ! -f "$EMOJI_FILE" ]]; then
  echo "Error: $EMOJI_FILE not found!"
  exit 1
fi

# Read the first line and split it into an array
IFS=' ' read -r -a emojis < "$EMOJI_FILE"

# Get length of array
count=${#emojis[@]}

# Pick a random index
random_index=$((RANDOM % count))

# Output the randomly selected emoji
echo "${emojis[$random_index]}"
