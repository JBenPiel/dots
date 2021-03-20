export BASH_SILENCE_DEPRECATION_WARNING=1
export HISTCONTROL=ignoreboth:erasedups
export HISTFILESIZE=10000
export HISTSIZE=10000
export LC_CTYPE=C

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[32m\]\w\[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

alias brewup='brew update && brew upgrade && brew upgrade --cask'
alias cleardns='sudo killall -HUP mDNSResponder'

alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias moon="curl http://wttr.in/Moon"
alias weather="curl http://wttr.in"

