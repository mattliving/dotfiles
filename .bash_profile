# general
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias p='cd ~/projects'
alias d='cd ~/documents'
alias db='cd ~/documents/Dropbox'
alias j='cd ~/documents/java'
alias c='cd ~/documents/C'
alias lss='ls | sort'
alias antlr3='java org.antlr.Tool'
alias r='cd ~/documents/ruby'
alias webd='cd /library/webserver/documents'
alias jobf='cd ~/projects/jobfoundry'
alias s="subl ."

# ssh
alias snowy='ssh ml9357@snowy.cs.bris.ac.uk'
alias mattliving='ssh niflhel@mattliving.com'
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
. ~/bin/z.sh

# aws ec2
export EC2_HOME=~/.ec2
export PATH=~/bin:$PATH
export PATH=$EC2_HOME/bin:$PATH
export PATH=~/mongodb-2.2.0/bin:$PATH
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home
export EC2_PRIVATE_KEY=$EC2_HOME/pk-J32FZCO7IKTLXOQH3XTKTKMJEDH5Q7UJ.pem
export EC2_CERT=$EC2_HOME/cert-J32FZCO7IKTLXOQH3XTKTKMJEDH5Q7UJ.pem

# antlr3
export CLASSPATH=~/bin/antlr3/antlr.jar:$CLASSPATH

# weka
#export WEKAHOME=~/weka-3-6-8
#export CLASSPATH=$WEKAHOME/weka.jar

# openCV
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# MacPorts Installer addition on 2012-02-21_at_23:10:45: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export EDITOR=subl

eval "$(rbenv init -)"
