#!/bin/bash
#Download Gurobi from Web and put in /opt
#Get Licence From Web
echo "What is your gurobi key?"
read gurobikey

echo '' >> ~/.bashrc
echo '# Setup Gurobi Environment Variables' >> ~/.bashrc
echo 'export GUROBI_HOME="/opt/gurobi810/linux64"' >> ~/.bashrc
echo 'export PATH="${PATH}:${GUROBI_HOME}/bin"' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"' >> ~/.bashrc

export PATH=$PATH:/opt/gurobi810/linux64/bin

sudo cd /opt
sudo tar xvzf gurobi8.1.0_linux64.tar.gz
sudo chmod -R 777 gurobi810

#Exit out of root and then apply the gurobi licence
#Apply Licence
grbgetkey $gurobikey

#Inside of a virtualenv navigate to gurobi810 and setup gurobipy
# (venv) ... $ cd /opt/gurobi810/linux64
# (venv) ... $ python setup.py install

#Check Licence
# gurobi.sh
