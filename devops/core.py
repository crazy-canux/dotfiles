#!/usr/bin/env python
# -*- coding: utf-8 -*-
######################################################################
# Copyright (C) 2015 Faurecia (China) Holding Co.,Ltd.               #
# All rights reserved                                                #
# Name: core.py
# Author: Canux canuxcheng@gmail.com                                 #
# Version: V1.0                                                      #
# Time: Sun 21 Feb 2016 08:35:57 AM EST
######################################################################
# Description:
######################################################################

import logging
import argparse
import os
import sys
path = os.path.abspath(os.path.dirname(__file__) + "/" + "..")
sys.path.insert(0, path)
import xnagios


