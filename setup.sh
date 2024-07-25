#!/bin/sh

ansible-galaxy role install danielrolls.nix
ansible-playbook setup-box.yaml --ask-become
