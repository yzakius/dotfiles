#source /path-to-antigen/antigen.zsh
source /usr/share/zsh/share/antigen.zsh


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
antigen theme alanpeabody

# Tell Antigen that you're done.
antigen apply

#Cow + Fortune
echo
  cowfortune
echo

# My aliases
alias blog-test="bundle exec jekyll build && bundle exec jekyll serve"
alias blog-deploy='. ~/Coding/scripts/private/deploy-blog.sh'
alias dormir="echo 'Boa noite ;*' && systemctl hibernate"
alias notes="cd ~/Nextcloud/Notes/"
alias eu="cd ~/Nextcloud/minhas_coisas/"
alias projetcs="cd ~/Nextcloud/Projects/"
