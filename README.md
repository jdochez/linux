# linux
.dotfiles for linux 

# to checkout on a new system

alias linux_config='/usr/bin/git --git-dir=$HOME/src/linux_config/ --work-tree=$HOME'

git clone --bare https://github.com/jdochez/linux.git $HOME/src/linux_config

linux_config config --local status.showUntrackedFiles no 

# to push changes

linux_config add <files>
  
linux_config commit -m "new version..."

linux_config push --set-upstream origin master
