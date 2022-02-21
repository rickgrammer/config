sourced=0
if [ -n "$ZSH_EVAL_CONTEXT" ]; then 
  case $ZSH_EVAL_CONTEXT in *:file) sourced=1;; esac
fi
# alias vi=nvim
# alias vim=nvim
# alias tm='tmux attach || tmux'

# Ashfaq's config for the Zsh

# Enable colors and change prompt:
autoload -U colors && colors
# PS1="%B%{$fgwhite]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[indigo]%}%~%{$fg[white%}]%{$reset_color%}$%b "
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
    # echo "Hi" $(pwd) "HI"
}
setopt PROMPT_SUBST

# PS1="%{%F{yellow}%}%n%{%f%}@%{%F{blue}%}%m %{%F{white}%}%~%{%F{green}%}$%f%}%  "
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %F{cyan}%n@%m%f %F{white}%~%f%F{green}$(parse_git_branch)%f $ '

# autoload -Uz vcs_info
# precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
# zstyle ':vcs_info:git:*' formats '(%b)'

# Set up the prompt (with git branch name)
# setopt PROMPT_SUBST
# PROMPT='%n@%m ${PWD/#$HOME/~} ${vcs_info_msg_0_} $ '
# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

alias gll="git log --graph --all --decorate"

alias vi=nvim
alias ebs="vi ~/.bashrc"
alias ezs="vi ~/.zshrc"
alias eal="vi ~/.config/alacritty/alacritty.yml"
alias caw="vi ~/.config/awesome/rc.lua"
alias tm="tmux attach || tmux"
alias np='tmux new-session -A -s $(python -c "from os.path import abspath; print(abspath(\".\").split(\"/\")[-1])")'
alias work='cd /home/ashfaq/work/'
# alias np="tmux new-session -A -s $(python -c 'from os.path import abspath; print(abspath(".").split("/")[-1])')"
# alias np="tmux new-session -A -s $(cb_pwd)"

# export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
#

# . "$HOME/.cargo/env"
# source ~/.bash_completion/alacritty
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ] && [[ $sourced -eq 0 ]] ; then
#   # bash -exec /home/ashfaq/.tmux/bootstrap.sh
#   bash -exec 'tmux new-session -A -s $"r-$RANDOM"'
#   # exec tmux new-session -A -s $"r-$RANDOM"
# fi

# bindkey -s '\C-g' 'cd "$(find ~ -type d -iname '*' | fzf)"'
# bindkey -s '\C-o' 'open_fzf\n'
bindkey -s '\C-g' 'cd "$(find ~ -type d -iname \"*\" | fzf)"\n'
bindkey -s '\C-o' 'nvim "$(find ~ -type f -iname \"*\" | fzf)"\n'

source /usr/share/fzf/completion.zsh && source /usr/share/fzf/key-bindings.zsh

EDITOR="$(which nvim)"
bindkey -e

# Load zsh-syntax-highlighting; should be last.
source /opt/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
