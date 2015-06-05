GEN_BIN=$(ruby -e 'require "rubygems"; puts Gem::bindir')
PATH=$PATH:$GEN_BIN
PATH=/Users/yasuhiro/Bin:$PATH
PATH=/Users/yasuhiro/Dropbox:$PATH
PATH=/usr/local/bin:$PATH
export PATH
PS1='\u@\h \w\$ '
export PS1
export LANG=ja_JP.UTF-8
#export LANG=C
source ~/.bashrc
