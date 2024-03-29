# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/i311846/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"
# SPACESHIP_PROMPT_ADD_NEWLINE="true"
# SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
# SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
# SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
# SPACESHIP_USER_SHOW="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras npm node osx zsh-nvm zsh-autosuggestions zsh-syntax-highlighting)

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Android
export ANDROID_HOME=~/Library/Android/sdk/

# PATH
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export PATH=$PATH:~/Library/Android/sdk/tools
export PATH=$PATH:~/Library/Python/2.7/bin
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:~/Development/CSC/neo-java-web-sdk/tools
export PATH=$PATH:~/Development/mongodb-osx-x86_64-3.2.19/bin


# Set proxy for node
function setproxy() {
    export http_proxy="http://www-proxy-adcq7-new.us.oracle.com:80"
    export https_proxy="http://www-proxy-adcq7-new.us.oracle.com:80"
    export NO_PROXY="127.0.0.1,localhost,.oracle.com,.oraclecorp.com,.dev,.grungy.us,.local,.r0,.r1,.r2"
    # export no_proxy=$NO_PROXY
}

function unsetproxy() {
    unset http_proxy
    unset https_proxy
    unset NO_PROXY
}

# Yubikey handler
reload-ssh() {
    ssh-add -e /usr/local/lib/opensc-pkcs11.so >> /dev/null
    if [ $? -gt 0 ]; then
        echo "Failed to remove previous card"
    fi
    ssh-add -s /usr/local/lib/opensc-pkcs11.so
}

function disalbeAV() {
    sudo /usr/local/McAfee/AntiMalware/VSControl stop
    sudo /usr/local/McAfee/AntiMalware/VSControl stopoas
}

function enableAV() {
    sudo /usr/local/McAfee/AntiMalware/VSControl start
    sudo /usr/local/McAfee/AntiMalware/VSControl startoas
}

# NPM shortcuts
alias nlc="npm config list"
alias ni="npm install"
alias nig="npm install -g"
alias nis="npm install --save"
alias ncset="npm config set"
alias ncunset="npm config delete"

# Bash commands
# alias ll="ls -l"
# alias la="ls -la"

# Maven
alias mci="mvn clean install"

# Git aliases
alias gs="git status"
alias fetch="git fetch"
alias pull="git pull"
alias push="git push"
alias stash="git stash"
alias pop="git stash pop"
alias gcm="git commit -m"
alias glog="git log"
alias checkout="git checkout"
alias gs-all="git for-each-ref --format="'"'"%(refname:short) %(push:track)"'"'" refs/heads"
alias gcp="git cherry-pick"
alias gb="git branch"
alias gba="git branch -a"
function groot() {
    cd $(git rev-parse --show-toplevel)
}

# Cordova
alias cdv="cordova"
alias cdvr="cordova run"

# Android fastboot
alias frb="fastboot reboot-bootloader"
alias ff="fastboot flash"

# Ojet
alias o="ojet"
alias os="ojet serve"
alias ob="ojet build"
alias obr="ojet build --release"

#datalab
alias datalab-cli=~/Development/DataLab/datalab-cli/bin/dev

# Android fastboot
alias frb="fastboot reboot-bootloader"
alias ff="fastboot flash"

# The Fuck
eval $(thefuck --alias)

