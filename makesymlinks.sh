#!/bin/bash
########
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles
# in ~/dotfiles
########

######## variables

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc vim zshrc oh-my-zsh"

########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing fotfiles in ~..."
makdir -p $olddir
echo "Done."

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "Done."

# move any existing dotfiles in homedir to dotfiles old dir
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/.$file ~/dotfiles_old/
  echo "Create symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done

function install_zsh {
  if [ -f /bin/zsh -o -f /usr/bin/zsh]; then
    if [[ ! -d $dir/oh-my-zsh/ ]]; then
      git clone http://github.com/michaeljsmalley/oh-my-zsh.git
    fi

    if [[ ! $(echo $SHELL) == $(which zsh) ]]; then
      chsh -s $(which zsh)
    fi
  else
    platform=$(uname);

    if [[ $platform == 'Linux' ]]; then
      sudo apt-get install zsh
      install_zsh
    elif [[ $platform == 'Darwin' ]]; then
      echo "Please install zsh, then re-run this script!"
      exit
    fi
  fi
}

install_zsh
