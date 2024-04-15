#!/bin/zsh

# Start tmux session
tmux new-session -d -s vim_session

# Create first window with Zsh
tmux rename-window 'shell'
tmux send-keys -t vim_session 'zsh' Enter

# Create second window with Vim
tmux new-window -n 'vim' -c ~
tmux send-keys -t vim_session 'vim' Enter

# Define custom keybindings
tmux bind-key -n M-1 select-window -t 1
tmux bind-key -n M-2 select-window -t 2

# Attach to the tmux session
tmux attach-session -t vim_session
