.. _tmux:

TMUX
====

Include:

1. tmux

2. tpm

3. oh-my-tmux

Install
-------

Install Tmux::

    sudo apt-get install tmux
    sudo yum install tmux

Configuration::

    echo "source ~/dotfiles/etc/tmux/tmux.conf" > ~/.tmux.conf

Install TPM and tmux plugins(recommend)::

    rm -rf ~/.tmux
    mkdir -p ~/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm
    tmux # Start tmux
    Ctrl+b + I # In tmux run this.
    source-file ~/.tmux.conf # In tmux run this.

Install plugin by hand::

    rm -rf ~/.tmux
    mkdir -p ~/.tmux/bundle
    git clone <plugin-url>
    source-file ~/.tmux.conf # In tmux run this

Install oh-my-tmux::

<https://github.com/gpakosz/.tmux>

How to use
----------

Check the tmux documents.
