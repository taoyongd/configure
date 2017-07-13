# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

#################### custom configure####################
#export JAVA_HOME="/opt/jdk1.7.0_79/"
#export PATH="${PATH}:$JAVA_HOME/bin"


alias ll='ls -alF'
alias l='ls -l'
alias pp="ps -fu `whoami` | grep -v grep"
export PATH="${HOME}/bin:/sbin:/usr/sbin:/usr/local/git/bin:${PATH}"
PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p%{$fg[cyan]%}%d %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}>'

##############Robot Framework Demo###########
#export PYTHONPATH="${PYTHONPATH}:${HOME}/dev/cafe/calix/src:${HOME}/dev/GoTest/src:${HOME}/dev/dpu_mdu_test:${HOME}/dev/stp:/home/dqian/dev/cafe_ride/src"
#export CAFE_CONFIG="${HOME}/dev/cafe/calix/src/demo/david_demo/robot/e7/config.ini"

########## JDK ##################
export JAVA_HOME=/usr/java/latest
export JRE_HOME=${JAVA_HOME}/jre
export PATH=${HOME}/.local/bin:$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib

##########QUICK COMMAND##################
alias cafe="cd ~/dev/cafe/calix/src"
alias dpu="cd ~/dev/dpu_mdu_test/dpu_mdu_automation"
alias rf="cd ~/dev/cafe/calix/src/demo/david_demo"
alias ff=firefox
alias chrome=chromium-browser
alias vi=vim
alias ipy=ipython
alias notebook="jupyter notebook --ip=0.0.0.0 --no-browser &"
alias pycharm="pycharm.sh"
alias dfimage="docker run --rm -v /var/run/docker.sock:/var/run/docker.sock dduvnjak/dockerfile-from-image"
alias pb=planex-buildenv
alias mysync='f() {set -x; src=$(basename $1); rsync -avzp --delete $src yangqi@eddie3.uk.xensource.com:/home/yangqi/dev}; f'
alias oct=ocp-browser
#########################################
# Added by oh-my-vim
export PATH=$PATH:/home/qy/.oh-my-vim/bin
export VISUAL=vim
export EDITOR=vim

# OPAM configuration
. /home/qy/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

#########################################
# ssh agent
echo "Launch ssh-agent"
eval $(ssh-agent)
ssh-add


#########################################
# global
export GTAGSLABEL=pygments


#########################################
# golang
export GOROOT="${HOME}/software/go"
export PATH="${PATH}:${GOROOT}/bin"
export GOPATH="${HOME}/workspace/go"
export GOBIN="${HOME}/workspace/go/bin"
