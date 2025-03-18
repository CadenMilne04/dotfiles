export BASH_SILENCE_DEPRECATION_WARNING=1
export XDG_CONFIG_HOME="$HOME/.config"

# alias section =============================
alias ..='cd ../'
alias t='tmux'
alias e='exit'
alias n='nvim'
alias c="clear"

# git related ===
alias gs="git status"
alias gb="git branch"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --graph"

# projects =======
alias bpro="n ~/.bash_profile"
alias dots="n ~/dotfiles/.config/"
alias csr="cd ~/epp-projects/epp_csr_generation/"
alias csrc="cd ~/epp-projects/csr_generation_client/"
alias hm="cd ~/epp-projects/harbor-automation/"
alias flex="cd ~/epp-projects/flexnet-monitor/"
alias epp="cd ~/epp-projects/"
alias cyclone="cd ~/epp-projects/cyclone/"
alias jrpm="cd ~/epp-projects/jira-rpm/"
alias auc="cd ~/epp-projects/atlassian-user-cleanup/"
alias da="cd ~/epp-projects/dockerized-atlassian/"
alias sqlt="cd /Users/cmilne/epp-projects/sqlite-test"

# SSH hosts ========
export MGR_ACCOUNT="cmilne_mgr"
alias lxrm="ssh $MGR_ACCOUNT@lx-rivermint.ad.sei.cmu.edu"
alias wbgg="ssh $MGR_ACCOUNT@wobbegong.ecru.cert.org"
alias bltp="ssh $MGR_ACCOUNT@blacktip.ecru.cert.org"
alias gbln="ssh $MGR_ACCOUNT@goblin.ecru.cert.org"
alias slpr="ssh $MGR_ACCOUNT@sleeper.ecru.cert.org"
alias bull="ssh $MGR_ACCOUNT@bull.ecru.cert.org"
alias zbra="ssh $MGR_ACCOUNT@zebra.ecru.cert.org"
alias lprd="ssh $MGR_ACCOUNT@leopard.ecru.cert.org"
alias crbn="ssh $MGR_ACCOUNT@caribbean.ecru.cert.org"
alias bgry="ssh $MGR_ACCOUNT@bluegrey.ecru.cert.org"
alias bskg="ssh $MGR_ACCOUNT@basking.ecru.cert.org"
alias glpg="ssh $MGR_ACCOUNT@galapagos.ecru.cert.org"
alias grld="ssh $MGR_ACCOUNT@greenland.ecru.cert.org"
alias brbl="ssh $MGR_ACCOUNT@bramble.ecru.cert.org"
alias slmn="ssh $MGR_ACCOUNT@salmon.ecru.cert.org"

alias brnr="ssh $MGR_ACCOUNT@berner.ecru.cert.org"
alias ccdl="ssh $MGR_ACCOUNT@crocodile.ecru.cert.org"
alias bhma="ssh $MGR_ACCOUNT@bahama.ecru.cert.org"

# rust ===========
alias ct="cargo test"

# python ===========
alias p="python3"
alias pydoc="python3 -m pydoc"

# git ps1 ========
source ~/.git-prompt.sh
source ~/.git-completion.bash
PS1='\[\033[01;92m\]→ \[\033[01;96m\]\W \[\033[01;34m\]$(__git_ps1 "git:(\[\033[01;92m\]%s\[\033[01;34m\]) ")\[\033[00m\]\$ '

#Simple Prompt
# PS1='\W \$ '

# Color ls output
alias ls='ls -a --color=auto'
alias ll='ls -lah --color=auto'

export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/lib"
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setting PATH for Python 3.12
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH

export NODE_EXTRA_CA_CERTS=/Users/cmilne/certificates/ZscalerRootCertificate-2048-SHA256.crt
. "$HOME/.cargo/env"

# thefuck
eval $(thefuck --alias)
