# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(
  #aws
  common-aliases
  docker
  docker-compose
  docker-machine
  firewalld
  fedora
  git
  kubectl
  zsh-completions
)

autoload -U compinit && compinit

# source

source $ZSH/oh-my-zsh.sh

if [ -e ~/.local/bin/aws_zsh_completer.sh ];then
source ~/.local/bin/aws_zsh_completer.sh
fi


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
#
#


######################################## vvv ########################################

################################################################################

#docker completion

#Check ~/.zsh/completion/_docker
#fpath=(~/.zsh/completion $fpath)
#autoload -Uz compinit && compinit -i
#
#Not used, oh my zsh use plugin docker instead.




######################################## percol
#For zsh users, command versions are here (ppkill accepts options like -9).

function ppgrep() {
    if [[ $1 == "" ]]; then
        PERCOL=percol
    else
        PERCOL="percol --query $1"
    fi
    ps aux | eval $PERCOL | awk '{ print $2 }'
}

function ppkill() {
    if [[ $1 =~ "^-" ]]; then
        QUERY=""            # options only
    else
        QUERY=$1            # with a query
        [[ $# > 0 ]] && shift
    fi
    ppgrep $QUERY | xargs kill $*
}

#zsh history search

#In your .zshrc, put the lines below.

function exists { which $1 &> /dev/null }

if exists percol; then
    function percol_select_history() {
        local tac
        exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
        BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }

    zle -N percol_select_history
    bindkey '^R' percol_select_history
fi

#Then, you can display and search your zsh histories incrementally by pressing Ctrl + r key.





########################################


### VARIABLES
EDITOR=vim
export PATH=~/.local/bin:/opt/puppetlabs/bin:$PATH$PATH


extract () {
    if [ ! -f "$1" ] ; then
        echo "'$1' does not exist."
        return 1
    fi

    case "$1" in
        *.tar.bz2)   tar xvjf "$1"   ;;
        *.tar.xz)    tar xvJf "$1"   ;;
        *.tar.gz)    tar xvzf "$1"   ;;
        *.bz2)       bunzip2 "$1"    ;;
        *.rar)       rar x "$1"      ;;
        *.gz)        gunzip "$1"     ;;
        *.tar)       tar xvf "$1"    ;;
        *.tbz2)      tar xvjf "$1"   ;;
        *.tgz)       tar xvzf "$1"   ;;
        *.zip)       unzip "$1"      ;;
        *.Z)         uncompress "$1" ;;
        *.7z)        7z x "$1"       ;;
        *.a)         ar x "$1"       ;;
        *)           echo "Unable to extract '$1'." ;;
    esac
}

#my server ip
webt=45.77.197.178
zztj=45.76.158.108
aws_tokyo=13.231.103.2


#color
#LS_COLORS=$LS_COLORS:'di=1;034:' ; export LS_COLORS
LS_COLORS=$LS_COLORS:'di=1;104:' ; export LS_COLORS


########################################
#alias


# although rm in aliases-common plugin, I should ensure that in case .oh-my-zsh is not exist
alias rm='rm -i'
alias le='less'

alias ls='ls -ACGhX --file-type --time-style=iso --color=tty --group-directories-first'

#-A	--almost-all
#-C	 list entries by columns
#-G	--no-group in a long listing, don't print group names(small screen)
#-L	--dereference show information  for  the  file the link references
#Do Not Use L ,if I want to delete a @, I rm the real file
#-X	 sort alphabetically by entry extension
#-x	 list entries by lines instead of by columns
#-F	--classify append indicator (one of */=>@|) to entries
#--file-tye	like -F, except do not append '*'
#
#
#
# to use default ls 	 \ls


alias cd='cs'

function cs () {
    builtin cd "$@" && ls
    }

function cs2() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}


alias dstat='dstat --nocolor'

alias grep='grep -i -P --color=auto'
alias date='date +%Y-%m-%d\ %H:%M:%S'

alias pe='percol'
alias lo='locate'

alias mod_ls='lsmod'
alias mod_ins='insmod'
alias mod_rm='rmmod'
alias mod_dep='depmod'

alias se_setenforce='setenforce'
alias se_getenforce='getenforce'
alias se_getsebool='getsebool'
alias se_setsebool='setsebool'
alias se_restorecon='restorecon'

alias info='info --vi-keys'

alias du='du --time'


if [[ "" == "docker1" ]] ; 
then
    echo "No NO NO ..."
fi
