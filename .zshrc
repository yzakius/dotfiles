# Com ajuda de David Welber

autoload -U compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
zstyle ':completion:*' list-colors '=%*=01;31'

CASE_SENSITIVE="false"

autoload -Uz compinit
compinit

# Salva o histórico

HISTSIZE=1000
if (( ! EUID )); then
	HISTFILE=~/.zsh_history_root
else
	HISTFILE=~/.zsh_history
fi
SAVEHIST=1000

Cow + Fortune
echo
  cowfortune
echo

# Layout do prompt
PROMPT="╭─$ %n@%m% / %~ 
╰─%B$ %b "
RPS1="%B${return_code}%b"

# Cores
autoload -Uz promptinit
promptinit

# Habilita os botões Home, end, delete
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey "\e[3~" delete-char

# Meus aliases
alias blog-test="bundle exec jekyll build && bundle exec jekyll serve"
alias blog-deploy='. ~/Scripts/Private/deploy-blog.sh'
alias dormir="echo 'Boa noite ;*' && systemctl hibernate"
alias notes="cd ~/Nextcloud/notes/"


# vte - tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# rbenv
#eval "$(rbenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
