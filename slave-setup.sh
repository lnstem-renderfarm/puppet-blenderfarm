#!/bin/bash

## Blender and utils install
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y blender htop tmux ufw

## UFW
sudo ufw allow 22 # SSH
sudo ufw allow 80 # HTTP
sudo ufw allow 8140 # Puppet
sudo ufw allow 443 # HTTPS
sudo ufw enable

## PUPPET
# Remove old file:
rm puppetlabs-release-pc1-trusty.deb
# Get Puppet package
wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
# Install puppet sources
sudo dpkg -i puppetlabs-release-pc1-trusty.deb
# Update for puppet repos
sudo apt-get update
# Install the agent
sudo apt-get install puppet-agent
# Set master server
sudo /opt/puppetlabs/bin/puppet config set server jabba-masta-00.knoxschools.ad
# Now let's try running the agent for the first time
# This will give us things like the cert, which need to be signed on the master.
sudo /opt/puppetlabs/bin/puppet agent --waitforcert 20 --test --debug
# When that's done, restart puppet:
sudo service puppet restart

