###############
# Completions #
###############

# Completions
autoload -Uz compinit
compinit -i

# Arrow key menu for completions
zstyle ':completion:*' menu yes select
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ~/.zsh/cache

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-fzf-plugin/fzf.plugin.zsh


###########
# Aliases #
###########

# Set up aliases
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi
alias ls="ls --color"
alias grep='grep --color'

# Autocomplete command line switches for aliases
setopt completealiases histignorealldups sharehistory
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

########
# Misc #
########

# Automatically use cd when paths are entered without cd
setopt autocd

bindkey -v
bindkey "^?" backward-delete-char

#############
# Variables #
#############

# These are just basic recommendations, set these to your liking!
export EDITOR=helix
export BROWSER=firefox
export KEYTIMEOUT=1

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
	--color=fg:#e5e9f0,bg:#3b4252,hl:#81a1c1
	--color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1
	--color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac
	--color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b'

export PATH=/home/maciek/.cargo/bin:${PATH}

alias hx=helix

eval "$(starship init zsh)"
