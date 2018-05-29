ource ~/.config/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme eastwood 

# Tell Antigen that you're done.
antigen apply

# Notifications in Gnome
zsh__vte_prompt_command () {
        local command=$(HISTTIMEFORMAT= fc -l -1 | sed 's/^ *[0-9]\+ *//')
        command="${command//;/ }"
        local pwd='~'
        [ "$PWD" != "$HOME" ] && pwd=${PWD/#$HOME\//\~\/}
        printf "\033]777;notify;Command completed;%s\007\033]0;%s@%s:%s\007%s" "${command}" "${USER}" "${HOSTNAME%%.*}" "${pwd}" "$(__vte_osc7)"
}

precmd () {
    if which __vte_prompt_command &> /dev/null; then
            zsh__vte_prompt_command
    fi
}

# Aliases
alias vim='nvim'
alias vi='nvim'
alias progs='~/Nextcloud/Projects/'
alias update='sudo dnf update && flatpak update'

# Pyenv
export PATH="/home/yzakius/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
