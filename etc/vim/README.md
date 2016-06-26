# xDevOps/etc/vim

vim configuration file.

Include:
* vundle.vim/pathogen.vim
* basic.vim
* header.vim
* script.vim

# How to install

Install vim

    sudo apt-get install vim
    sudo yum install vim

Use vundle to manage plugins(recommend):

        echo "source ~/myCode/xDevOps/etc/vim/vundle.vim" > ~/.vimrc
        rm -rf ~/.vim
        mkdir -p ~/.vim/plugins
        vim +PluginInstall +qall # run this on shell command line
        :PluginInstall # or run this in vim command line
        source ~/.vimrc

Use pathogen to manage plugins:

        echo "source ~/myCode/xDevOps/etc/vim/pathogen.vim" > ~/.vimrc
        rm -rf ~/.vim/bundle
        mkdir -p ~/.vim/bundle
        git clone <plugin-url> ~/.vim/bundle/<plugin-name>
        source ~/.vimrc

# How to use

Ctrl+s - Save file

Ctrl+w - Strip trailing whitespace

Ctrl+d - Open stardict

\+8 - Run autopep8 to format code.


F1 - VIM help, default

F2 - Open/Close Winmanager

F3 - Open/Close NERDTree

F4 - Open/Close Tagbar

F5 - Open/Close Minibufexplorer

F6 - Open/Close gundo

F7 - Make clean, just for C/C++

F8 - Close quickfix windows, just for C/C++

F9 - Make and open quickfix windows, just for C/C++

F9 - Compile and run, just for Java

F9 - Check syntastic, just for Python

F10 - Use calendar

F11 - Full screen the terminal, default

F12 - Open Browser for markdown file
