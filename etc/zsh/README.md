# xdevops/etc/zsh

Include:

1. zsh

2. oh-my-zsh

3. Other plugins/themes

# How to install

Install zsh:

    sudo apt-get install zsh
    sudo yum install zsh

Install oh-my-zsh Use curl or wget(recommend):

    export ZSH="$HOME/.zsh.d/oh-my-zsh"; sh -c "$(curl -fsSL
    https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

or:

    export ZSH="$HOME/.zsh.d/oh-my-zsh"; sh -c "$(wget
    https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
    -O -)"

Install oh-my-zsh manual:

    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.zsh.d/oh-my-zsh
    cp ~/.zshrc ~/.zshrc.orig
    chsh -s /bin/zsh

Configuration:

    echo "source ~/myCode/xdevops/etc/zsh/zshrc" > ~/.zshrc

# How to use

## How to add your own plugins

You can manage other plugins with oh-my-zsh

Put it in ~/.zsh.d/oh-my-zsh/custom/plugins and add it in zshrc.

     git clone <pluing-url> ~/.zsh.d/oh-my-zsh/custom/plugins/<plugin-name>

## How to add your own themes

You can manage other themes with oh-my-zsh

Put it in ~/.zsh.d/oh-my-zsh/themes and modify theme in zshrc.
