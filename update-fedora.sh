#!/bin/bash

set +v

sudo dnf update --refresh
sudo dnf upgrade --refresh
sudo dnf install dnf-plugin-system-upgrade
sudo dnf system-upgrade download --releasever=41 || rc=$?
if [[ $rc != '' ]]; then
  sudo dnf system-upgrade download --releasever=41 --allowerasing
fi
echo "Upgrading the system after reboot 🎉"
sudo dnf system-upgrade reboot
