#!/bin/bash
#Copy CPLEX from Dropbox/Development and put in /opt
#Close out of all bash windows if in windows
#Start Terminal as Root
cd /opt
sh cplex_studio128.linux-x86-64.bin
cd /opt/ibm/ILOG/CPLEX_Studio128/python
python setup.py install
