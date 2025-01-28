export BASH_SILENCE_DEPRECATION_WARNING=1
export XDG_CONFIG_HOME="$HOME/.config"

# alias section =============================
alias ..='cd ../'
alias t='tmux'
alias e='exit'
alias n='nvim'
alias c="clear"
alias p="python3"

# git related ===
alias gs="git status"
alias gb="git branch"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gl="git log --graph"

# projects =======
alias bpro="n ~/.bash_profile"
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
alias lxrm="ssh cmilne_mgr@lx-rivermint.ad.sei.cmu.edu"
alias wbgg="ssh cmilne_mgr@wobbegong.ecru.cert.org"
alias bltp="ssh cmilne_mgr@blacktip.ecru.cert.org"
alias gbln="ssh cmilne_mgr@goblin.ecru.cert.org"
alias slpr="ssh cmilne_mgr@sleeper.ecru.cert.org"
alias bull="ssh cmilne_mgr@bull.ecru.cert.org"
alias zbra="ssh cmilne_mgr@zebra.ecru.cert.org"
alias lprd="ssh cmilne_mgr@leopard.ecru.cert.org"
alias crbn="ssh cmilne_mgr@caribbean.ecru.cert.org"
alias bgry="ssh cmilne_mgr@bluegrey.ecru.cert.org"
alias bskg="ssh cmilne_mgr@basking.ecru.cert.org"
alias brnr="ssh cmilne_mgr@berner.ecru.cert.org"
alias glpg="ssh cmilne_mgr@galapagos.ecru.cert.org"

# rust ===========
alias ct="cargo test"

# git ps1 ========
source ~/.git-prompt.sh
source ~/.git-completion.bash
PS1='\[\033[01;92m\]→ \[\033[01;96m\]\W \[\033[01;34m\]$(__git_ps1 "git:(\[\033[01;92m\]%s\[\033[01;34m\]) ")\[\033[00m\]\$ '

#Simple Prompt
# PS1='\W \$ '

# Color ls output
alias ls='ls --color=auto'
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
