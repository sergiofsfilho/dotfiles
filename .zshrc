# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sfrancisco/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
colored-man-pages
colorize
command-not-found
common-aliases
compleat
copydir
copyfile
cp
dircycle
dirhistory
dirpersist
docker
docker-compose
emoji
emoji-clock
git
git-flow
github
gitignore
history
history-substring-search
iterm2
kubectl
man
node
npm
osx
rsync
ssh-agent
sudo
systemd
terraform
vagrant
vundle
yarn
zsh-navigation-tools
zsh_reload
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

# Edit useful files
alias edit-zshconfig="vim ~/.zshrc"
alias edit-sshconfig="vim ~/.ssh/config"
alias edit-dotfiles="cd ~/Code/personal/github/dotfiles/ && ll"
alias edit-vimrc="vim ~/.vimrc"

# Load environments
alias start-etus-work="cd ~/Code/professional/etus && ll"

# Terraform aliases
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfip="tfi && tfp"

# Bash improvements
alias lla="ll -a"

# Settings for virtualenvwrapper (not using yet)
#export WORKON_HOME=$HOME/Code/.virtualenvs
#export PROJECT_HOME=$HOME/Code/?
#source /usr/local/bin/virtualenvwrapper.sh

# Other cool stuff
#alias whatsmyip="echo $(curl -s httpbin.org/ip | jq '.origin')"
#alias gcloud="docker run --rm --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk gcloud"
#alias kubectl="docker run --rm --volumes-from gcloud-config gcr.io/google.com/cloudsdktool/cloud-sdk kubectl"

# Docker aliases
alias dkps="docker ps"
alias dkpsa="docker ps -a"
alias dkst="docker stats"
alias dkimgs="docker images"
alias dkcpup="docker-compose up -d"
alias dkcpdown="docker-compose down"
alias dkcpstart="docker-compose start"
alias dkcpstop="docker-compose stop"

# Google Cloud Platform aliases
alias gcloud-load-etus-media-prod="gcloud config set project etus-media-prod \
  && gcloud config set compute/region us-east1 \
  && gcloud config set compute/zone us-east1-b \
  && gcloud config set run/region us-east1 \
  && gcloud config set run/platform managed"

alias gcloud-load-etus-media-development-staging="gcloud config set project etus-media-development-staging \
  && gcloud config set compute/region us-east1 \
  && gcloud config set compute/zone us-east1-b \
  && gcloud config set run/region us-east1 \
  && gcloud config set run/platform managed"

#alias gcloud-config-project="gcloud config set project" # pass project-id
#alias gcloud-config-zone="gcloud config set compute/zone" # pass compute-zone
#alias gcloud-config-region="gcloud config set compute/region" # pass compute-region
alias gcloud-update="gcloud components update"
## Cloud Shell
alias gcp-connect-cloud-shell="gcloud alpha cloud-shell ssh"
## GKE
## GCE
alias gce-instances-list="gcloud compute instances list"

#
eval "$(direnv hook zsh)"

# Powerlevel10k
#
# Load zsh theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sfrancisco/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sfrancisco/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sfrancisco/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sfrancisco/google-cloud-sdk/completion.zsh.inc'; fi

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Activate Python virtualenvwrapper 
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code/professional/etus/github/
source /usr/local/bin/virtualenvwrapper.sh
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
