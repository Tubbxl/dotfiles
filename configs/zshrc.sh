##########################################################################################
#ln -s /home/$USER/dotfiles/zshrc /home/$USER/.zshrc   # 使用绝对路径进行软链接#
##########################################################################################

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
plugins=(git git-flow-avh autojump)
[[ -s /home/$USER/.autojump/etc/profile.d/autojump.sh ]] && source /home/$USER/.autojump/etc/profile.d/autojump.sh
# User configuration

export PATH=$PATH:/home/${USER}/gitlab/egodeps/prebuilt/gcc/linux-x86/arm/toolchain-sunxi-musl/toolchain/bin
# export BOOST_ROOT=/home/${USER}/gitlab/egodeps/boost
export STAGING_DIR=""
 
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
#########################################################


export GTAGSCONF=/usr/local/share/gtags/gtags.conf
export GTAGSLABEL=ctags gtags

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="/home/${USER}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s /home/$USER/.autojump/etc/profile.d/autojump.sh ]] && source /home/$USER/.autojump/etc/profile.d/autojump.sh

setxkbmap -option ctrl:swapcaps

## use polipo for proxy, default port is 8123.
alias proxy='export http_proxy=http://127.0.0.1:8123;export HTTPS_PROXY=$http_proxy;export HTTP_PROXY=$http_proxy;export FTP_PROXY=$http_proxy;export https_proxy=$http_proxy;export ftp_proxy=$http_proxy;'
alias noproxy='unset http_proxy;unset HTTPS_PROXY;unset HTTP_PROXY;unset FTP_PROXY;unset https_proxy;unset ftp_proxy'

# export JAVA_HOME=/usr/local/jdk1.8.0
# export JRE_HOME=${JAVA_HOME}/jre
# export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH
export GTAGSCONF=/usr/local/share/gtags/gtags.conf
export GTAGSLABEL=ctags gtags
export GOROOT=/usr/local/go
export GOPATH=/home/${USER}/gitlab/go
export PATH=$PATH:/usr/local/go/bin:/home/${USER}/gitlab/go/bin

#if [ -d /opt/google/protobuf ];then
#    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/google/protobuf/lib/
#    export LIBRARY_PATH=$LIBRARY_PATH:/opt/google/protobuf/lib/
#    export PATH=$PATH:/opt/google/protobuf/bin/
#    export C_INCLUDE_PATH=$C_INCLUDE_PATH:/opt/google/protobuf/include/
#    export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/opt/google/protobuf/include/
#    export PKG_CONFIG_PATH=/opt/google/protobuf/lib/pkgconfig/
#fi

## for ros
export ROS_WORKSPACE=~/gitlab/catkin_ws/src 
[ -f /opt/ros/kinetic/setup.zsh ] && source /opt/ros/kinetic/setup.zsh
[ -f ~/gitlab/catkin_ws/install_isolated/setup.zsh ] && source ~/gitlab/catkin_ws/install_isolated/setup.zsh
# [ -f ~/gitlab/catkin_ws/devel/setup.zsh ] && source ~/gitlab/catkin_ws/devel/setup.zsh

#########################################################
alias c="clear"
# alias e="LC_CTYPE=zh_CN.UTF-8 emacs &"
alias e="emacs -nw"
alias gst="git status"
alias gad="git add"
alias gbr="git branch -vv"
alias gcl="git clone"
alias gps="git push"
alias gpl="git pull"
alias gplumr="git pull upstream master --rebase"
alias gcm="git commit -m"
alias gdf="git diff"
alias glg="git log --graph"
alias grh="git reset --hard"
alias gsh="git show "
alias gmg="git merge --no-ff"
alias aptinstall="sudo apt-get install "
alias ninstall="sudo npm install -g"
alias pinstall="sudo pip install"
alias ot="nautilus"
alias ycmd="/home/${USER}/gitlab/dotfiles/emacs.d/vendor/YCM-Generator/config_gen.py ./"
alias szsh="source ~/.zshrc"
alias dl="cd ~/Downloads"
alias dc="cd ~/Documents"
alias dt="cd ~/Desktop"
alias say="espeak"
alias mj="make -j4"
#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }
function seddir() { sed -i "s/$1/$2/g" `grep $1 -rl ./` }

# usage: cd your_project && ginit yourname youremail
function ginit() {
    if [ -z $1 -a -z $2 ];then
        echo "USAGE: "
        echo "     cd your_project"
        echo "     ginit yourname your@email.com"
    else
        echo "[user]" >> .git/config
        echo "     name  = $1" >> .git/config
        echo "     email = $2" >> .git/config
        echo "GPATH\nGRTAGS\nGTAGS" >> .gitignore
    fi
}

function cm() {
  nowdir=$PWD
  cd /home/$USER/gitlab/catkin_ws && catkin_make -j4 && cd $nowdir
}

function gstyle() {
  astyle --options=/home/$USER/gitlab/dotfiles/configs/astylerc --preserve-date $* 
}

function cpwd() {
    pwd | xclip -selection clipboard
}

function pdf() {
    zathura $1 & 
}

alias unzip="unzip -O CP936 "
alias rm="trash"
export GOROOT=/usr/local/go
export GOPATH=/home/congleetea/gitlab/go
export PATH=$PATH:/usr/local/go/bin:/home/congleetea/gitlab/go/bin
