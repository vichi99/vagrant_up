#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt-get install -y libpq-dev git

# serial communication
# sudo apt-get install -y picocom
# mqtt client
# sudo apt-get install -y mosquitto
# sudo apt-get install -y mosquitto-clients


####### 1. Install python classic way
# sudo apt install -y python3.8
# sudo apt-get install -y python3.8-venv
# sudo apt-get install -y python3.8-dev python3-setuptools
# sudo apt-get install -y python3.8-distutils
# sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# python3 get-pip.py
# rm -rf get-pip.py
# update alternatives




####### 2. Install python through pyenv
#dependencies
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev
sudo apt-get install -y libsqlite3-dev
sudo apt-get install -y libbz2-dev libreadline-dev
sudo apt-get install -y wget curl llvm libncurses5-dev
sudo apt-get install -y libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

#install pyenv
curl https://pyenv.run | bash
echo 'export PATH="/home/vagrant/.pyenv/bin:$PATH"' >> ~/.bashrc 
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc 
. ~/.bashrc

#install and set python
pyenv install 3.8.3
pyenv global 3.8.3

# set vagrant start up file
echo "cd /vagrant" >> ~/.bashrc
. ~/.bashrc
cd /vagrant
