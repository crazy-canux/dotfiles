# xDevOps/etc/tmux

tmux configuration file.

Include:
* vundle.vim/pathogen.vim
* basic.vim
* header.vim
* script.vim

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

        echo "source ~/myCode/xDevOps/etc/tmux/tmux.conf" > ~/.tmux.conf
        tmux source-file ~/.tmux.conf # run this in shell

# How to use
