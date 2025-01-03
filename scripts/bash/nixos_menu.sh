#!/usr/bin/env bash

config_path="/home/nick/NixOS"
menu_options=( "nixos-rebuild" "nix-flake-update" "nix-collect-garbage" "Quit")
host_name=$(hostname)
command_array=( "sudo nixos-rebuild switch --flake $config_path#$host_name" "cd $config_path; sudo nix flake update" "sudo nix-collect-garbage" "break")

selection_menu () {
    input_array=("$@")

    select selection in ${input_array[@]}; do
        if [[ -z "$selection" ]]; then
            printf '"%s" is not a valid choice\n' "$REPLY" >&2
        else
            user_in="$(( REPLY - 1 ))"
            break
        fi
    done
}

while : ; do
    clear
    echo "Select an option: "
    selection_menu ${menu_options[@]}
    menu_selection=${command_array[$user_in]}
    clear
    eval $menu_selection
    echo "Press Enter to continue"; read
done
