#!/bin/bash

EMOJI_URL="https://raw.githubusercontent.com/JeyKul/remoji/master/emojis.md"

# Fetch emoji list line from URL
emoji_line=$(curl -s "$EMOJI_URL")

if [[ -z "$emoji_line" ]]; then
  echo "Error: Could not fetch emoji list from URL"
  exit 1
fi

# Split the line by spaces into an array
IFS=' ' read -r -a emojis <<< "$emoji_line"

count=${#emojis[@]}
if (( count == 0 )); then
  echo "Error: No emojis found"
  exit 1
fi

random_index=$((RANDOM % count))
echo "${emojis[$random_index]}"
