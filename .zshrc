
export ZSH="$HOME/.oh-my-zsh"

DEFAULT_USER="kayamaox"
ZSH_THEME="agnoster"
ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(
    git
    node
    npm
    dotenv
    zsh-completions
    zsh-interactive-cd
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-history-substring-search
)

source $ZSH/oh-my-zsh.sh
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='code'
else
    export EDITOR='code'
fi

### Set alias
#############
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias cr="composer require"
alias phpb="php bin/console "
alias spc="sudo pacman -S "
alias spr="sudo pacman -R "
alias mi="makepkg -si "
alias mr="makepkg -r "
alias admin="sudo -s "
alias cls="clear"
alias home="cd ~"
alias la="ls -alF"
alias ls='ls --color=auto -v --group-directories-first'
alias files="thunar"
alias mkd="mkdir -m 755 "
alias mki="mkdir -m 777 "
alias help="cat ~/.zshrc | less"
alias files.="thunar ."
alias ..="cd ..

# Laravel
alias phpa="php artisan"
