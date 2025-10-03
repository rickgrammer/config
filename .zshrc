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
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %F{cyan}%n@%m%f %F{white}%~%f%F{green}$(parse_git_branch) %f$ '

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
# alias np="tmux new-session -A -s $(python -c 'from os.path import abspath; print(abspath(".").split("/")[-1])')"
# alias np="tmux new-session -A -s $(cb_pwd)"


EDITOR="$(which nvim)"
setopt share_history
#export LUA_PATH='/usr/share/lua/5.4/?.lua;/usr/share/lua/5.4/?/init.lua;/usr/lib/lua/5.4/?.lua;/usr/lib/lua/5.4/?/init.lua;./?.lua;./?/init.lua;/home/ashfaq/.luarocks/share/lua/5.4/?.lua;/home/ashfaq/.luarocks/share/lua/5.4/?/init.lua'
#export LUA_CPATH='/usr/lib/lua/5.4/?.so;/usr/lib/lua/5.4/loadall.so;./?.so;/home/ashfaq/.luarocks/lib/lua/5.4/?.so'
#export PATH='/home/ashfaq/.luarocks/bin:/home/ashfaq/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl'
# deno
export DENO_INSTALL="/home/ashfaq/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
# deno end
#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# set google chrome as default
export BROWSER='/usr/bin/google-chrome-stable'
alias k="kubectl"
export TERM=xterm-256color
alias python=python3

export PATH=$PATH:/usr/local/go/bin

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval "$(fzf --zsh)"
# Load zsh-syntax-highlighting; should be last.
source /home/ashfaq/work/bucket/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk && export PATH=$PATH:$ANDROID_HOME/emulator && export PATH=$PATH:$ANDROID_HOME/platform-tools
export WEZTERM_CONFIG_FILE=/home/ashfaq/.config/wezterm/init.lua

# Load secret env variable
source ~/.SECRETS

export GOBIN="$HOME/go/bin"
export PATH="$GOBIN:$PATH"

# don't break neovim "yank to system clipboard" when using both gnome & hyprland
if [ -S /run/user/$(id -u)/wayland-0 ]; then
    export WAYLAND_DISPLAY=wayland-0
fi
alias open=nautilus
