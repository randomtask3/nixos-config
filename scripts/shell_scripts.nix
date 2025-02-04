{ pkgs, ... }:
let
  nix-menu = pkgs.writeShellScriptBin "nix-menu" ''
    cd /home/nick/NixOS/scripts/bash
    ./nixos_menu.sh
  '';
  vintagestory = pkgs.writeShellScriptBin "vintagestory" ''
    cd /home/nick/NixOS/scripts/bash
    ./vintage-story.sh
  '';
in {
  environment.systemPackages = [ 
    nix-menu
    vintagestory 
  ];
}
