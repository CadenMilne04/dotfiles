export BASH_SILENCE_DEPRECATION_WARNING=1
export XDG_CONFIG_HOME="$HOME/.config"

# alias section =============================
alias ..='cd ../'
alias tm='tmux new-session -A -s main'
alias ts='tmux new-session -A -s school'
alias tp='tmux new-session -A -s project'
alias e='exit'
alias n='nvim'
alias c="clear"
alias ls='ls -a --color=auto'
alias ll='ls -lah --color=auto'

# git related ===
alias gs="git status"
alias gb="git branch"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --graph"

# servers ========
alias server="ssh root@cadenmilne.com" # Have an ssh-key setup for my macbook.
alias testhost="ssh root@134.209.77.136" # Have an ssh-key setup for my macbook.

# projects =======
alias bpro="nvim ~/.bash_profile"
alias dots="nvim ~/dotfiles/.config/"
alias thoth="ssh cjm295@thoth.cs.pitt.edu"
alias market="cd ~/web-projects/college-marketplace/"
alias rw="cd ~/rust-projects/web-server/"
alias hack="cd ~/programming/graph-predictor"
alias tcp="cd /Users/cadenmilne/pitt/cs1652/project-2/cs1652-project-2"
alias notes="cd /Users/cadenmilne/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/notes"
alias ovo="cd /Users/cadenmilne/programming/web-projects/oneveno/"

# pitt
alias pitt="cd ~/pitt"
alias 1520="cd ~/pitt/cs1520/"
alias 1652="cd ~/pitt/cs1652/"
alias aoc="cd ~/programming/advent-of-code/"
alias web="cd ~/programming/web-projects/"
alias qbc="cd /Users/cadenmilne/programming/web-projects/quote-book/client/"
alias qbs="cd /Users/cadenmilne/programming/web-projects/quote-book/server/"


# classes =======
alias 1622="cd ~/Documents/pitt-classes/f-2024/cs1622/"

# rust ===========
alias ct="cargo test"

# git ps1 ========
source ~/.git-prompt.sh
PS1='\[\033[01;92m\]→ \[\033[01;96m\]\W \[\033[01;34m\]$(__git_ps1 "git:(\[\033[01;92m\]%s\[\033[01;34m\]) ")\[\033[00m\]\$ '

#Simple Prompt
# PS1='\W \$ '

export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/lib"
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/usr/local/go/bin
. "$HOME/.cargo/env"

# Created by `pipx` on 2024-06-11 00:08:10
export PATH="$PATH:/Users/cadenmilne/.local/bin"

# CPP Path Stuff
export CPLUS_INCLUDE_PATH=/opt/homebrew/include/SDL2:$CPLUS_INCLUDE_PATH
export LIBRARY_PATH=/opt/homebrew/lib:$LIBRARY_PATH

# Python, important for pylint
export PYTHONPATH="/Users/cadenmilne/pitt/cs1520/project2-CadenMilne04/venv/lib/python3.13/site-packages"

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
