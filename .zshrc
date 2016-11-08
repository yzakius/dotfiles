source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
#antigen bundle heroku
#antigen bundle pip
#antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme bira

# Tell antigen that you're done.
antigen apply

#Keys "home/end" in gnome-terminal
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line

#Aliases
alias dormir="sudo pm-hibernate"
alias cochilar="sudo pm-suspend"

