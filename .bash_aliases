# SET PERSONAL ALIASES
alias now='date +"%m/%d/%Y %T"'
alias saver='cmatrix -Bsu 7'

# Directory navigation aliases
alias desktop='cd $DESKTOP; ls -l'
alias downloads='cd $DOWNLOADS; ls -l'
alias wiki='cd $GITHUB_REPOS/DPU_CYBERSEC/DPU_CYBERSEC.wiki; ls -l'
alias dpu='cd $GITHUB_REPOS/DPU_CYBERSEC; ls -l'
alias course='cd $github_repos/DPU_CYBERSEC/2019/SQ19_TDC405; ls -l'
alias conf='cd $GITHUB_REPOS/dotfile-configs; ls -al'
#alias conf='cd $GITHUB_REPOS/dotfile-configs; ls -al; sleep 4; read -p "Edit conf file: " DOTFILE; ${=EDITOR} $DOTFILE'

# Filesystem aliases
alias all='ls -arlFhG'
alias ls='ls -lh --group-directories-first'
alias lsa='ls -alh --group-directories-first'
alias ..='cd ..; ls -al'
alias tree='tree -IC ".*"' # Display directories tree structure

# Confirmation aliases
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i '
 
# GIT aliases
alias gs='git status'
alias ga='git add'
alias gp='git pull'
alias gc='git commit -m'
alias gsh='git push'
alias gch='git checkout'
alias gbr='git branch'
 
# TMUX aliases
alias thelp='cat ~/.bash_aliases | grep -i "tmux" | cut -d " " -f 2- | tail -n +3'
alias tls='tmux ls' # Show all sessions
alias tnw='tmux new -s $1 -n $2' # Starts new session with name $1 and window $2
alias tk='tmux kill-session -t $1' # Kills session named $1
alias ta='tmux attach-session -t $1' # Attach to session named $1
