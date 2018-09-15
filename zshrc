ZSH=$HOME/.oh-my-zsh
ZSH_THEME="rbates"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"

plugins=(git bundler brew gem rbates)

export PATH="/usr/local/bin:$PATH"
export EDITOR='mate -w'

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

###############
# TREY CUSTOM #
###############
export ZSH=/home/treylanz/.oh-my-zsh

#############
# POWERLINE #
#############
if [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
  source /usr/share/powerline/bindings/zsh/powerline.zsh
fi

######################
# PL9K CONFIGURATION #
######################
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MODE="fontawesome-regular"
POWERLEVEL9K_FONT="Droid Sans Mono Nerd Font Complete"

POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="004"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="166"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="015"
POWERLEVEL9K_HOME_FOREGROUND="015"

source /home/treylanz/.oh-my-zsh/themes/powerlevel9k.zsh-theme

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  git
  nvm
  tmux
  ruby
  python
)

source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/mnt/c/Users/Trey/.ssh/rsa_id"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='tmux'
else
  export EDITOR='vim'
fi

source <(npx --shell-auto-fallback zsh)

# NVM Plug-in
[[ -z "$NVM_DIR" ]] && export NVM_DIR="$HOME/.nvm"

# Load nvm if it exists
[[ -f "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
