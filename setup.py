#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Automatic install and configuration for DevOps tools.

Copyright (C) 2015 Canux CHENG.
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

import pydevops

NAME = 'pydevops'
VERSION = pydevops.__version__
URL = 'https://github.com/crazy-canux/pydevops'
DESCRIPTION = 'Deploy awesome development environment about zsh/bash/git/vim/tmux/stardict/rpm/dpkg...'
KEYWORDS = 'git vim tmux bash zsh stardict rpm dpkg'


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
    name=NAME,
    version=VERSION,
    author='Canux CHENG',
    author_email='canuxcheng@gmail.com',
    maintainer='Canux CHENG',
    maintainer_email='canuxcheng@gmail.com',
    description=DESCRIPTION,
    long_description=read('README.rst'),
    license='GPL',
    platforms='any',
    keywords=KEYWORDS,
    url=URL,
    install_requires=INSTALL_REQUIRES,
    packages=find_packages(),
    zip_safe=False,
    include_package_data=True,
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        "Environment :: X11 Applications",
        "Intended Audience :: Developers",
        "Natural Language :: English",
        "License :: OSI Approved :: GNU General Public License (GPL)",
        "Operating System :: POSIX",
        "Programming Language :: Python",
        "Programming Language :: Python :: 2.7",
        "Topic :: Terminals"
    ],
)
