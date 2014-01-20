#!/bin/bash
############################
# makedot.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/mydotfiles						# dotfiles directory
olddir=~/dotfiles.bak					# old dotfiles backup directory
files="profile bashrc bash_aliases vimrc vim gitconfig"			# list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "... done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

#link bin folder of home directory
mv ~/bin ~/dotfiles.bak/
ln -s $dir/bin ~/bin

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles.bak/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
