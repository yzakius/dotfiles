#Com ajuda de David Welber

autoload -U compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
zstyle ':completion:*' list-colors '=%*=01;31'

autoload -Uz compinit
compinit

CASE_SENSITIVE="false"

# Salva o histórico

HISTSIZE=1000
if (( ! EUID )); then
	HISTFILE=~/.zsh_history_root
else
	HISTFILE=~/.zsh_history
fi
SAVEHIST=1000

# Insere títulos as instâncias abertas do terminal
case $TERM in
    termite|xfce4-terminal|*xterm*|rxvt|rxvt-unicode|rxvt-256color|rxvt-unicode-256color|(dt|k|E)term)
		precmd () { print -Pn "\e]0;Terminal\a" } 
		preexec () { print -Pn "\e]0;$1\a" }
	;;
    screen|screen-256color)
    	precmd () { 
			print -Pn "\e]83;title \"$1\"\a" 
			print -Pn "\e]0;$TERM\a" 
		}
		preexec () { 
			print -Pn "\e]83;title \"$1\"\a" 
			print -Pn "\e]0;$TERM - $1\a" 
		}
	;; 
esac


# Layout do prompt
PROMPT="╭─$ %n@%m% / %~ 
╰─%B$ %b "
RPS1="%B${return_code}%b"

# Habilita os botões Home e End
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line

# PATH Ruby
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

### ALIASES
alias dormir="sudo systemctl hibernate"
alias notas="cd ~/ownCloud/notes/"
#Pomodoro Technique
alias work="sleep 25m && mpg123 ~/Música/metallica\ \[us\ 1984\]\ ride\ the\ lightning/04\ Fade\ To\ Black.mp3"
alias srest="sleep 5m && mpg123 ~/Música/metallica\ \[us\ 1984\]\ ride\ the\ lightning/04\ Fade\ To\ Black.mp3"
alias lrest="sleep 15m && mpg123 ~/Música/metallica\ \[us\ 1984\]\ ride\ the\ lightning/06\ Escape.mp3 "
