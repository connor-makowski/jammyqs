#!/bin/bash
echo "Only use on Ubuntu 20.04 Focal Fassa"

#!/bin/bash
echo "Generate Git Credentials? (y/n)"
read Git

echo "Setup Python? (Choose your versions later) (y/n)"
read PySetup

echo "Setup NodeJS? (y/n)"
read NodeJS

echo "Setup remote services (openVPN and SSH)? (y/n)"
read Remote

echo "Setup PostgreSQL? (y/n)"
read PostgreSQL

echo "Setup MySQL? (y/n)"
read MySQL

echo "Are all above Selections Correct? (y/n)"
read Correct

if [ "$Correct" == "y" ];
then
  touch ~/StartLog.txt
  echo "Custom Start Installation Starting" | tee -a ~/StartLog.txt
  ./scripts/basics.sh | tee -a ~/StartLog.txt
  if [ "$Git" == "y" ];
  then
    ./scripts/GitCredential.sh | tee -a ~/StartLog.txt
  fi
  if [ "$PySetup" == "y" ];
  then
    ./scripts/pysetup.sh | tee -a ~/StartLog.txt
  fi
  if [ "$NodeJS" == "y" ];
  then
    ./scripts/nvm.sh | tee -a ~/StartLog.txt
  fi
  if [ "$Remote" == "y" ];
  then
    ./scripts/remote.sh | tee -a ~/StartLog.txt
  fi
  if [ "$PostgreSQL" == "y" ];
  then
    ./scripts/postgresql.sh | tee -a ~/StartLog.txt
  fi
  if [ "$MySQL" == "y" ];
  then
    ./scripts/mysql.sh | tee -a ~/StartLog.txt
  fi
  exit 1
else
  echo "Restarting Process."
  ./QuickStart.sh
  exit 1
fi
