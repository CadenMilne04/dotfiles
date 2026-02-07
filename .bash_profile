export BASH_SILENCE_DEPRECATION_WARNING=1
export XDG_CONFIG_HOME="$HOME/.config"

# alias section =============================
alias ..='cd ../'
alias n='nvim'
alias ls='ls -a --color=auto'
alias ll='ls -lah --color=auto'

# git related ===
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --graph"

# servers ========
alias server="ssh root@cadenmilne.com" # Have an ssh-key setup for my macbook.
alias server2="ssh root@134.209.40.66" # Have an ssh-key setup for my macbook.

# projects =======
alias bpro="nvim ~/.bash_profile"
alias notes="cd /Users/cadenmilne/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/notes"

# git ps1 ========
source ~/.git-prompt.sh
PS1='\[\033[01;92m\]→ \[\033[01;96m\]\W \[\033[01;34m\]$(__git_ps1 "git:(\[\033[01;92m\]%s\[\033[01;34m\]) ")\[\033[00m\]\$ '

#Simple Prompt
# PS1='\W \$ '

# Core system + package managers
export PATH="/Library/TeX/texbin:/opt/homebrew/bin:/usr/local/bin:/usr/local/go/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin"

# User tools
export PATH="$PATH:$HOME/.ghcup/ghc/9.6.7/bin:$HOME/go/bin:$HOME/.ghcup/bin:$HOME/.local/bin"

# Rust (cargo)
. "$HOME/.cargo/env"

# CPP Path Stuff
export CPLUS_INCLUDE_PATH=/opt/homebrew/include/SDL2:$CPLUS_INCLUDE_PATH
export LIBRARY_PATH=/opt/homebrew/lib:$LIBRARY_PATH

# Python, important for pylint
export PYTHONPATH="/Users/cadenmilne/pitt/cs1520/project2-CadenMilne04/venv/lib/python3.13/site-packages"

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# git completion
[ -f ~/.git-completion.bash ] && . ~/.git-completion.bash

