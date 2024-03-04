{ pkgs, ... }:
let
  nix-menu = pkgs.writeShellScriptBin "nix-menu" ''
    cd /home/nick/NixOS/common/scripts/bash
    ./nixos_menu.sh
  '';
  vintagestory = pkgs.writeShellScriptBin "vintagestory" ''
    cd /home/nick/NixOS/common/scripts/bash
    ./vintage-story.sh
  '';
in {
  environment.systemPackages = [ 
    nix-menu
    vintagestory 
  ];
}