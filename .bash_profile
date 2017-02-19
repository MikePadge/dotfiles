# 
# .bash_profile
#@author Mike Padgett
#
#@see .inputrc
#@see .bashrc for env variables
#@see .aliases for custom commands

# set irc proxy via one of however many servers
# set bastion proxy if not on trusted network

if [ -f ~/.aliases ]
then
	source ~/.aliases
fi

if [ -f ~/.bashrc ]
then
	source ~/.bashrc
fi

export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
export BLOCKSIZE=1k
export PATH=/usr/local/bin:$PATH
export EDITOR=vim
export LSCOLORS=gxfxcxdxbxegedabagacad

#exec ssh-agent $BASH -s 10<&0 << EOF
#    ssh-add ~/.ssh/mike &> /dev/null
#    exec $BASH <&10-
#EOF

if [[ -s $HOME/.rvm/scripts/rvm ]]; then
	  source $HOME/.rvm/scripts/rvm;
fi

alias ns="~/Documents/Bin/newSite.sh"
	
source ~/.profile

