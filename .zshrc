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
alias tmc="tmux -L chai attach || tmux -L chai"
alias npc='tmux -L chai new-session -A -s $(python -c "from os.path import abspath; print(abspath(\".\").split(\"/\")[-1])")'
alias work='cd /home/ashfaq/work/'
alias open='exo-open'
alias dek="yay -Si"
# alias np="tmux new-session -A -s $(python -c 'from os.path import abspath; print(abspath(".").split("/")[-1])')"
# alias np="tmux new-session -A -s $(cb_pwd)"


zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ] && [[ $sourced -eq 0 ]] ; then
#   # bash -exec /home/ashfaq/.tmux/bootstrap.sh
#   bash -exec 'tmux new-session -A -s $"r-$RANDOM"'
#   # exec tmux new-session -A -s $"r-$RANDOM"
# fi

bindkey -s '\C-g' 'cd "$(find ~ -type d -iname \"*\" -not -path \"./\.*\*" | fzf)"\n'
bindkey -s '\C-o' 'nvim "$(find ~ -type f -iname \"*\" | fzf)"\n'
bindkey -s '^[r' '~/config/opacity_toggler.sh\n'

source /usr/share/fzf/completion.zsh && source /usr/share/fzf/key-bindings.zsh

EDITOR="$(which nvim)"
export LANG="en_US.UTF-8"
bindkey -e
setopt share_history
# Load zsh-syntax-highlighting; should be last.
source /opt/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

export LUA_PATH='/usr/share/lua/5.4/?.lua;/usr/share/lua/5.4/?/init.lua;/usr/lib/lua/5.4/?.lua;/usr/lib/lua/5.4/?/init.lua;./?.lua;./?/init.lua;/home/ashfaq/.luarocks/share/lua/5.4/?.lua;/home/ashfaq/.luarocks/share/lua/5.4/?/init.lua'
export LUA_CPATH='/usr/lib/lua/5.4/?.so;/usr/lib/lua/5.4/loadall.so;./?.so;/home/ashfaq/.luarocks/lib/lua/5.4/?.so'
export PATH='/home/ashfaq/.luarocks/bin:/home/ashfaq/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl'

# pnpm
export PNPM_HOME="/home/ashfaq/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# deno
export DENO_INSTALL="/home/ashfaq/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
# deno end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# set google chrome as default
export BROWSER='/usr/bin/google-chrome-stable'

# java
export PATH="$HOME/opts/jdk-11.0.17/bin:$PATH"

# android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
alias k="minikube kubectl --"

# bun completions
[ -s "/home/ashfaq/.bun/_bun" ] && source "/home/ashfaq/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
