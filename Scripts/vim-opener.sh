#!/bin/bash

selected=$(pwd)
selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)
file_to_open="$@"  # Capture all passed arguments (filenames)

# If no tmux is running, create a new session and attach
if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s "$selected_name" -c "$selected" -n editor "nvim $file_to_open"
    exit 0
fi

# If the session does not exist, create it
if ! tmux has-session -t "$selected_name" 2>/dev/null; then
    tmux new-session -ds "$selected_name" -c "$selected" -n editor "nvim $file_to_open"
fi

# Switch to or attach to the session
if [[ -n "$TMUX" ]]; then 
    tmux switch-client -t "$selected_name"
else
    tmux attach -t "$selected_name"
fi
