{ pkgs, ... }:
let
  nixos_menu = pkgs.writeShellScriptBin "nixos-menu" ''
    cd /home/nick/NixOS/scripts/bash
    ./nixos_menu.sh
  '';
  vintagestory = pkgs.writeShellScriptBin "vintagestory" ''
    cd /home/nick/NixOS/scripts/bash
    ./vintage-story.sh
  '';
in {
  environment.systemPackages = [ 
    nixos_menu 
    vintagestory 
  ];
}