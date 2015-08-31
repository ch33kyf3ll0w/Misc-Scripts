#!/bin/bash
#Mac OS X dependencies
#Run this script from within the root empire directory
#Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#Install git
brew install git
#Install Python
brew install python
#Install dependencies via Pip
pip install iptools
pip install pydispatcher
pip install pycrypto
git+https://github.com/mtrmac/M2Crypto.git@swig-3.0.5-22.3#egg=M2Crypto
#Update Python Env Var
export PYTHONPATH="$PYTHONPATH:/usr/local/lib/python2.7/site-packages
#Configure database
./setup/setup_database.py
