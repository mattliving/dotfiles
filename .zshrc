#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# general
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias db='cd ~/Dropbox'
alias mem='cd ~/Documents/Work/Memrise'
alias lss='ls | sort'
alias jobf='cd ~/projects/jobfoundry'
alias server="python -m SimpleHTTPServer"
alias bws='brunch watch -s'
alias bower='noglob bower'
alias new="brunch new https://github.com/Nss/angular-brunch-seed-javascript.git"
alias yt="youtube-dl"
alias yt-high="youtube-dl --max-quality FORMAT"

# encrypt file.txt to file.enc using 256-bit AES in CBC mode
# openssl enc -aes-256-cbc -salt -in file.txt -out file.enc

# the same, only the output is base64 encoded for, e.g., e-mail
# openssl enc -aes-256-cbc -a -salt -in file.txt -out file.enc

# decrypt binary file.enc
# openssl enc -d -aes-256-cbc -in file.enc

# decrypt base64-encoded version
# openssl enc -d -aes-256-cbc -a -in file.enc

# ssh
# alias mattliving='ssh root@95.85.48.12'
alias mattliving='ssh root@178.62.68.192'
alias pv296='ssh malachite@pearlvalley296.com'
alias aws='ssh -i ~/.ssh/ec2-keypair ubuntu@ec2-23-20-196-251.compute-1.amazonaws.com'
alias bc='ssh -X ml9357@bluecrystalp1.bris.ac.uk'

# git
export PATH=$PATH:/usr/local/git/bin/
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

# File size
alias fs="stat -f \"%z bytes\""

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# z script
#. ~/bin/z.sh
source ~/.nvm/nvm.sh
nvm use 0.10

ulimit -n 4096
export PATH=/usr/local/bin:/usr/local/share/python:$PATH

# aws ec2
export EC2_HOME=~/.ec2
export PATH=~/bin:$PATH
export PATH=$EC2_HOME/bin:$PATH
export PATH=~/mongodb-2.2.0/bin:$PATH
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export EC2_PRIVATE_KEY=$EC2_HOME/pk-J32FZCO7IKTLXOQH3XTKTKMJEDH5Q7UJ.pem
export EC2_CERT=$EC2_HOME/cert-J32FZCO7IKTLXOQH3XTKTKMJEDH5Q7UJ.pem

export EDITOR='subl'

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

case $- in
   *i*) source ~/.bashrc
esac


