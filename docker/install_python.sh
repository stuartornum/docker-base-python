#!/usr/bin/env bash

set -e

# INSTALL PYTHON 2.7.11
cd /tmp
wget https://www.python.org/ftp/python/2.7.11/Python-2.7.11.tgz
tar zxvf Python-2.7.11.tgz
cd Python-2.7.11
./configure && make && make install
cd /tmp && rm -rf Python-*

# INSTALL PYTHON SETUPTOOLS
wget https://pypi.python.org/packages/source/s/setuptools/setuptools-19.1.1.tar.gz#md5=792297b8918afa9faf826cb5ec4a447a
tar zxvf setuptools-19.1.1.tar.gz
cd setuptools-19.1.1
/usr/local/bin/python2.7 setup.py install
cd /tmp && rm -rf setuptools*

# INSTALL PYTHON PIP
wget https://pypi.python.org/packages/source/p/pip/pip-7.1.2.tar.gz#md5=3823d2343d9f3aaab21cf9c917710196
tar zxvf pip-7.1.2.tar.gz
cd pip-7.1.2
/usr/local/bin/python2.7 setup.py install

