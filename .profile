# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

export COMP_NAME="unknown computer name"
if [ -f ~/.profile_local ]; then
    . ~/.profile_local
fi

echo $COMP_NAME
if [[ $COMP_NAME == *"laptop"* ]]; then
   cd $HOME/Documents/code
   export GOPATH="$HOME/Documents/code/go"
else
   export GOPATH="$HOME/code/go"
fi
export GOROOT="/usr/local/go"
PATH="$PATH:$GOPATH/bin:$GOROOT/bin"

#if [[ $HOSTNAME != *"google"* ]]; then
#  cd $HOME/Documents/code
#fi

PATH="$HOME/Documents/code/refind:$PATH"

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Documents/code/python
. "/usr/local/bin/virtualenvwrapper.sh"


# default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


