.. _git:

GIT
===

Include:

1. git

Install
-------

Install git::

    sudo apt-get install git
    sudo yum install git

Configuration ~/.gitconfig::

    [include]
        path = ~/pydeveloper/etc/git/gitcofig

Git configuration
^^^^^^^^^^^^^^^^^

/etc/gitconfig,use "git config --system".

~/.gitconfig,use "git config --global".

.git/config,use "git config --local".

Add your global configuration::

    git config --global user.name "yourname"
    git config --global user.email "youremail"

Set proxy
---------

Set your proxy for http/https protocol::

    git config --global http.proxy "yourproxy_for_http/https"

Set your proxy for git protocol::

    git config --global core.gitproxy "yourproxy_for_git"
