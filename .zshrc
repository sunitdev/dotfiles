# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/sunit/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# Alias
alias vi=nvim
alias ls='exa --group-directories-first'
alias ll='ls --long --header --git'
alias la='ls --all'
alias tree='ls --tree'
alias ipython='python3 -m IPython'

# Fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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
