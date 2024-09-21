# ==== MAIN SETTINGS ====
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ==== UPDATE SETTINGS ====
# which auto-update mode to use
zstyle ':omz:update' mode prompt
# how much information is displayed after an update
zstyle 'omz:update' verbosity default

# ==== COMPLETION SETTINGS ====
# use case-sensitive completion.
CASE_SENSITIVE="false"
# use hyphen-insensitive completion. Case-sensitive completion must be off.
# _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"
# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
zstyle 'completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# ==== AUTOMATIC TITLE ====
# disable auto-setting terminal title.
DISABLE_AUTO_TITLE="false"

# ==== LIBRARY SETTINGS ====
# enable if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="false"
# disable colors in ls.
DISABLE_LS_COLORS="false"
# enable command auto-correction.
ENABLE_CORRECTION="true"
# disable marking untracked files under VCS as dirty. 
DISABLE_UNTRACKED_FILES_DIRTY="true"
# the command execution time stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# ==== HISTORY SETTINGS ====
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# ==== PLUGINS ====

# alias-finder settings
zstyle ':omz:plugins:alias-finder' autoload yes
zstyle ':omz:plugins:alias-finder' longer yes
zstyle ':omz:plugins:alias-finder' exact yes
zstyle ':omz:plugins:alias-finder' cheaper yes

# eza settings
zstyle ':omz:plugins:eza' 'dirs-first' yes
zstyle ':omz:plugins:eza' 'git-status' no
zstyle ':omz:plugins:eza' 'header' no
zstyle ':omz:plugins:eza' 'show-group' no
zstyle ':omz:plugins:eza' 'icons' yes
zstyle ':omz:plugins:eza' 'size-prefix' si
zstyle ':omz:plugins:eza' 'hyperlink' no

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  autoupdate
  colored-man-pages
  eza
  gh
  rust
  starship
  thefuck
  zoxide
  zsh-autocomplete
  zsh-autopair
  zsh-autosuggestions
  zsh-completion-generator
  zsh-history-substring-search
  zsh-syntax-highlighting
)

# zsh-completions can't be loaded with the rest of the plugins
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

# ==== ENV VARIBLES ====
export VISUAL=nvim
export EDITOR="$VISUAL"
export BAT_THEME="Nord"
export TERM=kitty

# ==== ALIASES ====
alias cd="z"
alias whereami="sh /home/aiden/Scripts/whereami.sh"
alias syu="sh /home/aiden/Scripts/syu.sh"
alias man="colored man"

# ==== KEYBINDINGS ====
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
