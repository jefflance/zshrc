# -*- sh -*-

# Use emacs keybindings
bindkey -e

# Some systems misses the appropriate /etc/inputrc for this
bindkey "\e[3~" delete-char        # Delete

# Replace insert-last-word by a smart version
autoload -U smart-insert-last-word
zle -N insert-last-word smart-insert-last-word

# Also copy previous word
autoload -U copy-earlier-word
zle -N copy-earlier-word
bindkey "\e," copy-earlier-word

# Enable magic quoting of URL
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic
