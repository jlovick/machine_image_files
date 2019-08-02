export ZSH_USER=jlovick
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# source /usr/lib/advanced_shell_history/zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jlovick"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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
plugins=(git ruby tmux cp gitignore history safe-paste sublime )

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/home/$ZSH_USER/.rvm/gems/ruby-head/bin:/home/$ZSH_USER/.rvm/gems/ruby-head@global/bin:/home/$ZSH_USER/.rvm/rubies/ruby-head/bin:/home/$ZSH_USER/bin:/home/$ZSH_USER/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/$ZSH_USER/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Use `docker-cleanup --dry-run` to see what would be deleted.

 function docker-cleanup {
   EXITED=$(docker ps -q -f status=exited)
     DANGLING=$(docker images -q -f "dangling=true")

       if [ "$1" == "--dry-run" ]; then
           echo "==> Would stop containers:"
               echo $EXITED
                   echo "==> And images:"
                       echo $DANGLING
                         else
                             if [ -n "$EXITED" ]; then
                                   docker rm $EXITED
                                       else
                                             echo "No containers to remove."
                                                 fi
                                                     if [ -n "$DANGLING" ]; then
                                                           docker rmi $DANGLING
                                                               else
                                                                     echo "No images to remove."
                                                                         fi
                                                                           fi
                                                                           }
#                                                                           


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

#setopt PROMPT_SUBST
#PROMPT='%{$(pwd|grep --color=always /)%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f '
alias "ls=ls --color=auto"

eval $( dircolors ~/.dir_colors )
setopt extended_glob

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

source ~/.profile

