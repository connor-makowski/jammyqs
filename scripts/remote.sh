#!/bin/bash
echo "Installing openvpn"
sudo apt-get install openvpn -y

echo "Setting up openvpn directory for config files"
mkdir ~/openvpn

echo "Setup alias for connecting to openvpn"
echo '# Make openvpn connection alias' >> ~/.bash_aliases
echo "alias ovpn='openvpn --config ~/openvpn/config.ovpn'" >> ~/.bash_aliases
echo "Done setting up open vpn alias"

echo "Installing SSH Server"
sudo apt-get install openssh-server -y
