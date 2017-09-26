# own aliasing 
alias hubot-ssh='gcloud compute --project "xd-hubot" ssh --zone "asia-east1-a" "instance-1"'

# VirtualEnv ========================================= {{{
#
alias venv='virtualenv'
alias emacs='emacs -nw'
#
# # }}}

# Plain Bagel server
alias bagel-dev='ssh -i ~/pub/vr_dev.pem ubuntu@dev.skippy.ai'
alias bagel-devko='ssh -i ~/pub/vr_dev.pem ubuntu@devko.skippy.ai'
alias bagel-prod='ssh -i ~/pub/skippy_ca.pem ubuntu@us.skippy.ai'

# Tmux ========================================= {{{
#
# # create a new session with name
alias tmuxnew='tmux new -s'
# # list sessions
alias tmuxl='tmux list-sessions'
# # tmuxa <session> : attach to <session> (force 256color and detach others)
alias tmuxa='tmux -2 attach-session -d -t'
#
# # }}}



# screen ========================================= {{{
# 
# # list sessions
alias sls='screen -ls'
# # create a new session with name 
alias snew='screen -S'
# # sdr <session> : attach to <session> and detach others
alias sdr='screen -d -r'
#
# # }}}

# tail -f to tailf
alias tailf='tail -f'

# ls, the common ones I use a lot shortened for rapid fire usage
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'

alias zshrc='$EDITOR ~/.zshrc' # Quick access to the ~/.zshrc file

alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
