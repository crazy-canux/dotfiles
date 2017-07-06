.. _zsh:

ZSH
===

Include:

1. zsh

2. oh-my-zsh

Install
-------

Install zsh::

    sudo apt-get install zsh
    sudo yum install zsh

Install oh-my-zsh::

    export ZSH="$HOME/.zsh.d/oh-my-zsh"; sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

or::

    export ZSH="$HOME/.zsh.d/oh-my-zsh"; sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

or::

    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.zsh.d/oh-my-zsh
    cp ~/.zsh.d/oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

Configuration::

    chsh -s $(which zsh)
    echo "source ~/myCode/pydevops/etc/zsh/zshrc" > ~/.zshrc

Customize your oh-my-ZSH
------------------------

Include:

1. themes

2. plugins

Customize your themes
^^^^^^^^^^^^^^^^^^^^^

Pick one theme in ~/.zsh.d/oh-my-zsh/themes::

    ZSH_THEME="random"

You can manage other zsh themes with oh-my-zsh, just modify ~/pydevops/etc/zsh/zshrc::

    git clone <theme-url> ~/.zsh.d/oh-my-zsh/themes/<theme-name>
    ZSH_THEME="<theme-name>/<theme-name>"

Customize your plugins
^^^^^^^^^^^^^^^^^^^^^^

Pick themes in ~/.zsh.d/oh-my-zsh/plugins::

    plugins+=()

You can manage other zsh plugins with oh-my-zsh, just modify ~/pydevops/etc/zsh/zshrc::

    git clone <plugin-url> ~/.zsh.d/oh-my-zsh/custom/plugins/<plugin-name>
    plugins+=(<plugin-name>)

Customize your ZSH
------------------

The same with bash.

Include:

1. aliases

2. completions

3. shell command

Create your aliases
^^^^^^^^^^^^^^^^^^^

Put your aliases in ~/.bash_aliases.

Create your completions
^^^^^^^^^^^^^^^^^^^^^^^

Put your completions shell script in ~/.bash.d.

Create your shell command
^^^^^^^^^^^^^^^^^^^^^^^^^

Put your shell command in ~/bin.
