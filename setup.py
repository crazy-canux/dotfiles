#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Automatic install and configuration for DevOps tools.

Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.
All rights reserved.
Name: setup.py
Author: Canux CHENG canuxcheng@gmail.com
Version: V1.0.0.0
Time: Fri 05 Aug 2016 09:59:29 AM CST

Exapmle:
    python setup.py -h
"""
import os

from setuptools import setup, find_packages

import devops


def read(readme):
    """Give reST format README for pypi."""
    extend = os.path.splitext(readme)[1]
    if (extend == '.rst'):
        import codecs
        return codecs.open(readme, 'r', 'utf-8').read()
    elif (extend == '.md'):
        import pypandoc
        return pypandoc.convert(readme, 'rst')

INSTALL_REQUIRES = [
    'pylint',
    'jedi',
    'pep8',
    'pyflakes',
    'mccabe',
    'pep257',
    'autopep8'
]

setup(
    name='xdevops',
    version=devops.__version__,
    author='Canux CHENG',
    author_email='canuxcheng@gmail.com',
    maintainer='Canux CHENG',
    maintainer_email='canuxcheng@gmail.com',
    description='Deploy awesome DevOps environment with zsh/bash/git/tmux/vim/stardict/rpm/dpkg...',
    long_description=read('README.md'),
    license='GPL',
    platforms='any',
    keywords='DevOps vim git bash zsh stardict tmux rpm dpkg',
    url='https://github.com/crazy-canux/xdevops',
    install_requires=INSTALL_REQUIRES,
    packages=find_packages(),
    zip_safe=False,
    include_package_data=True,
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        "Environment :: X11 Applications",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: GNU General Public License (GPL)",
        "Operating System :: POSIX",
        "Programming Language :: Python",
        "Programming Language :: Python :: 2.7",
        "Topic :: Terminals"
    ],
)
