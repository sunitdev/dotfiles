# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Homebrew
PATH=$PATH:/opt/homebrew/bin 

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(z vi-mode git)

source $ZSH/oh-my-zsh.sh

# Alias
alias vi=nvim
alias ls='eza --group-directories-first'
alias ll='ls --long --header --git'
alias la='ls --all'
alias tree='ls --tree'
alias ipython='python3 -m IPython'
# Utility to switch between tmux session
alias ts='tmux attach -t "$(tmux list-sessions -F "#{session_name}" | fzf --reverse)"'

# Fzf
source <(fzf --zsh)

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

# NVM
source $(brew --prefix nvm)/nvm.sh

# Python Virtual Env
export WORKON_HOME=~/.virtualenv
export VIRTUALENVWRAPPER_PYTHON=$(which python3)
source /Users/sunit/Library/Python/3.9/bin/virtualenvwrapper.sh

# pnpm
export PNPM_HOME="/Users/sunit/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# VI mode different cursor
# vi mode
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Syntax Highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Auto Suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
