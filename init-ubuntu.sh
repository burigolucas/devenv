#!/bin/bash

echo "Initial setup for Ubuntu"
echo

sudo apt-get update
sudo apt-get install gh
sudo apt-get install ansible

./setup.sh