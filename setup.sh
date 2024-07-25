#!/bin/sh

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

exit 0
ansible-galaxy role install danielrolls.nix
ansible-playbook setup-box.yaml --ask-become
