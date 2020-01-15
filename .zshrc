# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ❯
# ZSH_THEME="refined" 
ZSH_THEME="af-magic" 
# use specturm_[b]ls choose color!

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
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

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

export VISUAL=nvim
export EDITOR="$VISUAL"
export GIT_EDITOR=nvim


# Before plugin kubectl
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then source '/opt/google-cloud-sdk/path.zsh.inc'; fi


plugins=(
# aws
docker
docker-compose
fasd
git
git-open
golang
github
helm
minikube
node
npm
nvm
pip
kubectl
kube-ps1
kubetail
# zsh-completions
terraform
vault
# zsh-autosuggestions
zsh-syntax-highlighting
)

autoload -U compinit && compinit

# source

source $ZSH/oh-my-zsh.sh


# After source
# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then source '/opt/google-cloud-sdk/completion.zsh.inc'; fi



if [ -e ~/.local/bin/aws_zsh_completer.sh ];then
    source ~/.local/bin/aws_zsh_completer.sh
fi


#git hub conflict
unalias git


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nvim'
fi

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


### ######################################## percol
### #For zsh users, command versions are here (ppkill accepts options like -9).
### 
### function ppgrep() {
###     if [[ $1 == "" ]]; then
###         PERCOL=percol
###     else
###         PERCOL="percol --query $1"
###     fi
###     ps aux | eval $PERCOL | awk '{ print $2 }'
### }
### 
### function ppkill() {
###     if [[ $1 =~ "^-" ]]; then
###         QUERY=""            # options only
###     else
###         QUERY=$1            # with a query
###         [[ $# > 0 ]] && shift
###     fi
###     ppgrep $QUERY | xargs kill $*
### }
### 
### #zsh history search
### 
### #In your .zshrc, put the lines below.
### 
### function exists { which $1 &> /dev/null }
### 
### if exists percol; then
###     function percol_select_history() {
###         local tac
###         exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
###         BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
###         CURSOR=$#BUFFER         # move cursor
###         zle -R -c               # refresh
###     }
### 
###     zle -N percol_select_history
###     bindkey '^R' percol_select_history
### fi
### 
### #Then, you can display and search your zsh histories incrementally by pressing Ctrl + r key.




########################################fzf



# If you use vi mode on bash, you need to add set -o vi before source ~/.fzf.bash in your .bashrc, so that it correctly sets up key bindings for vi mode.

# this will make zsh strange, up down
#set -o vi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


########################################


if [[ "${terminfo[kcbt]}" != "" ]]; then
    bindkey "${terminfo[kcbt]}" reverse-menu-complete   # [Shift-Tab] - move through the completion menu backwards
fi






########################################

### VARIABLES
export EDITOR=nvim
export GIT_EDITOR=nvim
export GOPATH=~/go


PATH=$PATH:~/.local/bin:~/.local/share:/usr/local/bin:/usr/local/share:/usr/local/bin/shell
PATH=$PATH:/opt:/opt/shell
PATH=$PATH:/usr/local/go/bin
PATH=$PATH:$GOPATH/bin:~/go/bin
PATH=$PATH:~/miniconda3/bin
PATH=$PATH:/snap/bin
PATH=$PATH:~/.serverless/bin
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export FZF_DEFAULT_OPTS='--height 40% --reverse'

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


# export GIT_SSL_NO_VERIFY=true

# export GOPROXY="https://goproxy.io"
# must add /*, do not add https://
export GOPRIVATE="github.${MY_COMPANY}.com/*"

# MY_PROXY=gateway7
if [[ $MY_PROXY != '' ]];then
    # export GOPROXY="https://goproxy.io"
    export http_proxy="socks5:/$MY_PROXY:1080"
    export https_proxy="socks5://$MY_PROXY:1080"

fi



#color

LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:"

export LS_COLORS


ZLS_COLORS="no=00:fi=00:di=01;34:ln=01;36:\
pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:\
or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:\
*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:\
*.z=01;31:*.Z=01;31:*.gz=01;31:*.deb=01;31:\
*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.ppm=01;35:\
*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:\
*.mpg=01;37:*.avi=01;37:*.gl=01;37:*.dl=01;37:"

export ZLS_COLORS

#LS_COLORS=$LS_COLORS:'di=1;034:' ; 
#LS_COLORS=$LS_COLORS:'di=1;104:' ; 
#LS_COLORS=$LS_COLORS:'di=1;044:' ; 
#LS_COLORS=$LS_COLORS:'di=0;34:' ;  
#LS_COLORS=$LS_COLORS:'di=1;157:' ; 
if [[ -n $SSH_CONNECTION ]]; then
    #LS_COLORS=$LS_COLORS:'di=1;044:' ; 
    LS_COLORS=$LS_COLORS:'di=0;044:' ; 
fi
if [[ $TERM == 'linux' ]];then
    LS_COLORS=$LS_COLORS:'di=0;044:' ;
fi
if [[ $TERM == 'xterm-256' ]];then
    LS_COLORS=$LS_COLORS:'di=0;034:' ;
fi




# zsh-syntax-highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
# https://misc.flogisoft.com/bash/tip_colors_and_formatting
# ZSH_HIGHLIGHT_STYLES[]
ZSH_HIGHLIGHT_STYLES[alias]='fg=114' #light green
ZSH_HIGHLIGHT_STYLES[builtin]='fg=114' #light green
ZSH_HIGHLIGHT_STYLES[command]='fg=114' #light green
ZSH_HIGHLIGHT_STYLES[function]='fg=40' #green
ZSH_HIGHLIGHT_STYLES[arg0]='fg=40' #green

ZSH_HIGHLIGHT_STYLES[path]='fg=207' #pink
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=141' #purple
ZSH_HIGHLIGHT_STYLES[globbing]='fg=140' #purple
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=226' #yellow

ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=cyan'

ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=215,bold' #orange
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=215' #orange

ZSH_HIGHLIGHT_STYLES[comment]='fg=14' #light blue
ZSH_HIGHLIGHT_STYLES[default]='fg=39' #blue
# ZSH_HIGHLIGHT_STYLES[default]='fg=14' #light blue
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=57'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='bg=57'
ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=57'


########################################
#alias


# although rm in aliases-common plugin, I should ensure that in case .oh-my-zsh is not exist
alias rm='echo "================================================================================" '

alias ls='ls -ACGhX --file-type --time-style=iso --color=tty --group-directories-first'
alias sl=ls
alias ks=ls
alias vim=nvim
alias vi=nvim
alias vimdiff='nvim -d'
if [[ `command -v pgcli` ]];then
    alias psql=pgcli
fi

alias h=helm
alias helm3=helm

alias gpg=gpg2

alias b=bat


#-A --almost-all
#-C  list entries by columns
#-G --no-group in a long listing, don't print group names(small screen)
#-L --dereference show information  for  the  file the link references
#Do Not Use L ,if I want to delete a @, I rm the real file
#-X  sort alphabetically by entry extension
#-x  list entries by lines instead of by columns
#-F --classify append indicator (one of */=>@|) to entries
#--file-tye like -F, except do not append '*'
#
#
#
# to use default ls      \ls


alias c='fasd_cd -d'
# `-d` option present for bash completion
# function fasd_cd is defined in posix-alias


# alias cd='cs'

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


function cow(){
    cowsay $1|lolcat
}



# alias dstat='dstat --nocolor'

# alias grep='grep -P --color=auto'
# some shell function will broken # theme refined
alias date='date +%Y-%m-%dT%H:%M:%S'


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
alias ag='ag -i --hidden' #case-insensitive including .dir



########################################
#mac

if [[ `uname` != 'Linux' ]];then
    PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
    alias updatedb='/usr/libexec/locate.updatedb'
    export PATH
    export MANPATH
    #alias ls='ls -ACGh --color'
fi

# WSL
if [[ `uname -a` =~ "Microsoft" ]];then
    export ADMIN=/mnt/c/Users/Administrator
    # fix git window file mode
    git config --global core.fileMode false
    # PS
    # $env:GOPROXY='https://goproxy.io'
    http_proxy='socks5://gateway7:1080'
    https_proxy='socks5://gateway7:1080'
fi

