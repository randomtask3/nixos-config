#!/usr/bin/env bash

config_path="/home/nick/NixOS/develop"
menu_options=( "C/C++" "C#" "LaTex" "Nix" "Python" "Rust" "Quit")
host_name=$(hostname)
command_array=( "nix develop $config_path/c-cpp" "nix develop $config_path/csharp" "nix develop $config_path/latex" "nix develop $config_path/nix" "nix develop $config_path/python" "nix develop $config_path/rust" "break")

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
    source /home/nick/NixOS/scripts/bash/prompt
    
    echo "Select an option: "
    selection_menu ${menu_options[@]}
    menu_selection=${command_array[$user_in]}
    clear
    eval $menu_selection
    echo "Press Enter to continue"; read
done
