#!/bin/bash
# Enable apt package management system to add puppetlabs repositories
# Follow documentation from:
# https://docs.puppet.com/puppet/latest/puppet_collections.html#apt-based-systems
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
sudo dpkg -i puppetlabs-release-pc1-xenial.deb
sudo apt update

# install puppetserver
sudo apt-get install -y puppetserver

# create symlinks into /usr/bin
sudo ln -s /opt/puppetlabs/bin/puppet /usr/bin/puppet
sudo ln -s /opt/puppetlabs/bin/puppetserver /usr/bin/puppetserver
