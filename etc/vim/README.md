# xDevOps/etc/vim

vim configuration file.

Include:

1. vundle.vim/pathogen.vim

2. basic.vim

3. header.vim

4. script.vim

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

Ctrl+d - Open stardict

F1 - VIM help, default

F2 - Open/Close Winmanager

F3 - Open/Close NERDTree

F4 - Open/Close Tagbar

F5 - Open/Close Minibufexplorer

F6 - Open/Close gundo

F7 - For C/C++ run make clean

F8 - For C/C++ close quickfix windows.

F8 - For python open PymodeLintAuto

F9 - For C/C++ run make

F9 - For java run javac and java

F9 - For python run PymodeLint

F10 - Use calendar

F11 - Full screen the terminal, default

F12 - Open Browser for markdown file
