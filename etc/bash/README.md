# xDevOps/etc/bash

Include:

1. bash

2. bash-it

# How to install

Install bash-it:

    mkdir ~/.bash.d
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash.d/bash-it
    . ~/.bash.d/bash-it/install.sh
    chsh -s /bin/bash

Configuration:

    echo "source ~/myCode/xDevOps/etc/bash/bashrc" > ~/.bashrc

# How to use

## Create your own bash-it

Include:

1. aliases

2. completion

3. plugins

4. themes

Modify bashrc for bash-it part.

## Create your own aliases

Put your aliases in ~/.bash_aliases

## Create your own bash script

Put your bash script in ~/.bash.d and named *.bash

## Create your own shell command

Put your command in "$PATH" which you write in bashrc
