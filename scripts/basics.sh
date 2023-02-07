#!/bin/bash
echo "Upgrading Ubuntu"
sudo apt update -y
sudo apt upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y
echo "Finished upgrading Ubuntu"

echo "Installing curl"
sudo apt-get install curl -y

echo "Installing Git"
sudo apt-get install git -y

echo "Set up git default to not track filemodes"
git config --global core.filemode false

echo "Make sure ~/.bash_aliases exists"
touch ~/.bash_aliases
