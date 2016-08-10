#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.

All rights reserved.
Name: setup.py
Author: Canux CHENG canuxcheng@gmail.com
Version: V1.0.0.0
Time: Fri 05 Aug 2016 09:59:29 AM CST

Description:
"""
import codecs

from setuptools import setup, find_packages

import devops

INSTALL_REQUIRES = [
    'pymysql',
    'pymssql',
    'pysnmp',
    'paramiko',
    'wmi',
    'pyvmomi'
]

setup(
    name='xdevops',
    version=plugin.__VERSION__,
    author='Canux CHENG',
    author_email='canuxcheng@gmail.com',
    maintainer='Canux CHENG',
    maintainer_email='canuxcheng@gmail.com',
    description='Deploy awesome DevOps environment with zsh/bash/git/tmux/vim/stardict/rpm/dpkg...',
    long_description=codecs.open('README.rst', 'r', 'utf-8').read(),
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
