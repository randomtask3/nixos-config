#!/usr/bin/env bash

config_path="/home/nick/NixOS"
menu_options=( 1 "nixos-rebuild" 2 "nix-flake-update" 3 "nix-collect-garbage" 4 "Quit")
host_name=$(hostname)
command_array=("" "sudo nixos-rebuild switch --flake $config_path#$host_name" "sudo nix flake update" "sudo nix-collect-garbage" "break")

while : ; do
    menu_selection=$(dialog --no-shadow --stdout --no-cancel --menu "NixOS Menu" 0 0 0 ${menu_options[@]})
    clear
    eval "${command_array[$menu_selection]}"
    echo "Press Enter to continue"; read
done