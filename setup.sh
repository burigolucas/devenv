#!/bin/bash

echo "Setting up the local development environment"
echo "Some packages will be installed system-wide"
echo

ansible-galaxy role install danielrolls.nix
ansible-playbook setup-box.yaml --ask-become
