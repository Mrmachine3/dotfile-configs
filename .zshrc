# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/share/python:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/mrmachin3/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="machinemode"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "michelebolgna" "junkfood" "dallas")

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
  battery
  iterm2
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# zshrc configuration aliases
 alias zshconfig='atom ~/.zshrc'
 alias zshrc='${=EDITOR} ~/.zshrc'
 alias ohmyzsh='atom ~/.oh-my-zsh'
 alias .zsh='source ~/.zshrc'

# Filesystem aliases
 alias all='ls -arlF'
 alias home='cd'
 alias desktop='cd ~/Desktop'
 alias ..='cd ..; ls -al'
 alias cd..='cd ..; ls -al'
 alias ...='cd ..; cd ..; ls -al'
 alias ls="ls -al"
 alias h='history'
 alias hs='history|grep -i'
 alias c='clear'
 alias cls='clear'
 alias now='date +"%T"'

# confirmation aliases
 alias mv='mv -i'
 alias cp='cp -i'

# Docker aliases
 alias dco='docker-compose'
 alias dcb='docker-compose build'
 alias dce='docker-compose exec'
 alias dcps='docker-compose ps'
 alias dcrestart='docker-compose restart'
 alias dcrm='docker-compose rm'
 alias dcr='docker-compose run'
 alias dcstop='docker-compose stop'
 alias dcup='docker-compose up'
 alias dcdn='docker-compose down'
 alias dcl='docker-compose logs'
 alias dclf='docker-compose logs -f'
 alias dcpull='docker-compose pull'
 alias dcstart='docker-compose start'

# Python venv aliases
 alias pyfind='find . -name "*.py"'
 alias deact='deactivate'
 alias act27='source vpy27/bin/activate'
 alias act36='source vpy36/bin/activate'

# System command aliases
 alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT1|grep -E "state|to\ full|percentage"'
