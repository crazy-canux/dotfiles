# xdevops/etc/git

Include:

1. git

# How to install

Install git

    sudo apt-get install git
    sudo yum install git

Configuration:

/etc/gitconfig 系统级的配置文件，通过git config --system设置

~/.gitconfig 用户级的配置文件，通过git config --global设置

.git/config 仓库级的配置文件，通过git config --local设置

# How to use

Write this in ~/.gitconfig and delete everything else.

    [include]
        path = ~/myCode/xdevops/etc/git/gitcofig

# How to set proxy

github have 4 proxy:
1. local proxy file:///path/to/project.git
2. remote https:// https://github.com/<username>/<project>.git or https://<username>:<password>@github.com/<username>/<project>.git
3. ssh://git@github.com/<username>/<project>.git or git@github.com:<username>/<project>.git
4. git://

