#!/bin/bash
echo "Getting script to setup pip on any python version"
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

echo "python3.10 is installed by default on Jammy Jellyfish."
echo "Setting up pip and virtualenv for python3.10"
python3.10 get-pip.py
python3.10 -m pip install virtualenv

echo "Setup Additional Python Versions (via the deadsnakes ppa)? (y/n)"
read AddPy

if [ "$AddPy" == "y" ];
then
    echo "Adding Deadsnakes PPA"
    sudo add-apt-repository ppa:deadsnakes/ppa -y

    # TODO: Allow arbitrary version choice (input)
    echo "Adding python3.11"
    sudo apt-get install python3.11 python3.11-distutils -y
    python3.11 get-pip.py
    python3.11 -m pip install virtualenv

fi

# TODO: Choose your default python version (input)
echo "Aliasing python for python3"
echo '#Alias default version for python and python3' >> ~/.bash_aliases
echo 'alias python="python3.11"' >> ~/.bash_aliases
echo "Aliasing pip"
echo '#Alias pip for default python versions' >> ~/.bash_aliases
echo 'alias pip="python -m pip --require-virtualenv"' >> ~/.bash_aliases

echo "Adding Quick Access to make and activate virtualenvs as makevenv and venv"
echo '#Quick Access to build and activate virtualenvs' >> ~/.bash_aliases
echo 'alias makevenv="python -m virtualenv venv && vact"' >> ~/.bash_aliases
echo 'alias vact="source venv/bin/activate"' >> ~/.bash_aliases
echo "Done adding quick access for virtualenvs"
