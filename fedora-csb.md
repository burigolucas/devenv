# Setup Fedora CSB

```bash
ansible-playbook setup-box.yaml --become -t vim
ansible-playbook setup-box.yaml --become -t podman
ansible-playbook setup-box.yaml --become -t java
ansible-playbook setup-box.yaml --become -t tmux
ansible-playbook setup-box.yaml --become -t git
ansible-playbook setup-box.yaml --become -t bat
ansible-playbook setup-box.yaml --become -t atuin
ansible-playbook setup-box.yaml --become -t meld
ansible-playbook setup-box.yaml --become -t dev-tools
```