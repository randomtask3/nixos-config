#!/usr/bin/env bash

cd ~/NixOS
git add .
echo "Enter git commit message: "
read message
git commit -m "$message"
git push https://github.com/randomtask3/nixos-config master
