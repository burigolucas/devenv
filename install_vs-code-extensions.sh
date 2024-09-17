#!/bin/bash

extensions=(
  "vscjava.vscode-spring-initializr"
  "vscjava.vscode-spring-boot-dashboard"
  "tamasfe.even-better-toml"
  "yzhang.markdown-all-in-one"
  "Dart-Code.dart-code"
  "Dart-Code.flutter"
  "mongodb.mongodb-vscode"
  "ms-python.vscode-pylance"
  "ms-python.python"
  "redhat.vscode-yaml"
  "ms-azuretools.vscode-docker"
  "ms-vscode.cpptools"
  "eamodio.gitlens"
  "rust-lang.rust-analyzer"
  "ms-python.debugpy"
  "esbenp.prettier-vscode"
  "vscode-icons-team.vscode-icons"
  "ms-python.black-formatter"
  "hashicorp.terraform"
  "VisualStudioExptTeam.vscodeintellicode"
  "ms-kubernetes-tools.vscode-kubernetes-tools"
  "redhat.java"
  "ms-vsliveshare.vsliveshare"
  "zxh404.vscode-proto3"
)

for ext in ${extensions[*]}; do
  code --install-extension $ext --force
done
