#!/bin/sh

# Update the package lists
apt-get -y update

# Install prerequisites, saying yes to all prompts
# Eclipse (Java should be installed as a dependency)
apt-get -y install eclipse-platform

# Git
apt-get -y install git
