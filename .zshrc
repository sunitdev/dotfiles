# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
