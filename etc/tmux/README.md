# xdevops/etc/tmux

tmux configuration file.

Include:

1. vundle.vim/pathogen.vim

2. basic.vim

3. header.vim

4. script.vim

# How to install

Install plugin by TPM(recommend):

        rm -rf ~/.tmux
        mkdir -p ~/.tmux/plugins
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/tmp
        Ctrl+b + I    # In tmux run this.
        source-file ~/.tmux.conf # In tmux run this.

Install plugin by hand:

        rm -rf ~/.tmux
        mkdir -p ~/.tmux/bundle
        git clone <plugin-url>
        source-file ~/.tmux.conf # In tmux run this

Configuration:

        echo "source ~/myCode/xdevops/etc/tmux/tmux.conf" > ~/.tmux.conf
        tmux source-file ~/.tmux.conf # run this in shell

# How to use
