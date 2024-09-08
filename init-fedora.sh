#!/bin/bash

echo "Initial setup for Fedora"
echo

sudo dnf install \
	vim-enhanced \
	ansible-core

ansible-galaxy collection install community.general
ansible-galaxy role install danielrolls.nix
ansible-playbook setup-box.yaml --ask-become -t unison
ansible-playbook setup-box.yaml -t vs-code
