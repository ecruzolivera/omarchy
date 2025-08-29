source ~/.profile

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
HIST_STAMPS="yyyy-mm-dd"

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  )

source $ZSH/oh-my-zsh.sh

# User configuration
setopt NONOMATCH
# setopt GLOB_DOTS
#share commands between terminal instances or not
setopt SHARE_HISTORY

export HISTCONTROL=ignoreboth:erasedups

# Make nvim the default editor

export EDITOR='nvim'
export VISUAL='nvim'

#PS1='[\u@\h \W]\$ '

# Source things
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/Android/Sdk" ] ;
  then export ANDROID_HOME="$HOME/Android/Sdk"
fi

if [ -d "$HOME/Android/Sdk/platform-tools" ] ;
  then PATH="$HOME/Android/Sdk/platform-tools:$PATH"
fi

if [ -d "$HOME/Android/Sdk/emulator" ] ;
  then PATH="$HOME/Android/Sdk/emulator:$PATH"
fi

if [ -d "$HOME/.emacs.d/bin" ] ;
  then PATH="$HOME/.emacs.d/bin:$PATH"
fi

if [ -d "$HOME/.local/share/pnpm" ] ;
  then PATH="$HOME/.local/share/pnpm:$PATH"
fi

[ -f ~/.cargo/env ] && source ~/.cargo/env
# fzf shortcuts
if [ -n "${commands[fzf-share]}" ]; then
  source "$(fzf-share)/key-bindings.zsh"
  source "$(fzf-share)/completion.zsh"
fi
# mise
if command -v "mise" > /dev/null 2>&1; then
    eval "$(mise activate zsh)"
fi

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gsm="git switch master"
alias gbd="git branch | grep -v "master" | xargs git branch -D"
alias gbc="git -c switch"

alias ls="exa -l --group-directories-first"
alias cat=batcat
alias grep="rg -uu"
alias open=xdg-open
alias xemulator="QT_QPA_PLATFORM=xcb emulator"
# alias npm=pnpm
# alias npx="pnpm dlx"
# alias upgrade_all="sudo apt upgrade -y && sudo snap refresh && flatpak update -y && brew update && rustup update && npm update -g"
alias hf="history|grep -i"
# alias vim="nvim"
alias e="nvim"
#merge new settings
alias xmerge="xrdb -merge ~/.Xresources"

DEFAULT_USER=ernesto

# Snapcraft configuration
# export SNAPCRAFT_BUILD_ENVIRONMENT_CPU=$(($(nproc) - 1))
# export SNAPCRAFT_BUILD_ENVIRONMENT_MEMORY=24G
#
# other 
export XDG_CONFIG_HOME="$HOME/.config"



# vi mode
set -o vi

bindkey -s ^f "tmux-sessionizer\n"



## Functions
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# >>>> Vagrant command completion (start)
# fpath=(/opt/vagrant/embedded/gems/gems/vagrant-2.4.1/contrib/zsh $fpath)
# compinit
# <<<<  Vagrant command completion (end)
#
