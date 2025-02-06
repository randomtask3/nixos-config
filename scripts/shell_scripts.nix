{ pkgs, ... }:
let
  nix-menu = pkgs.writeShellScriptBin "nix-menu" ''
    cd /home/nick/NixOS/scripts/bash
    ./nixos_menu.sh
  '';
  wake_timber_hearth = pkgs.writeShellScriptBin "wake_timber_hearth" ''
    cd /home/nick/NixOS/scripts/bash
    ./wake_timber_hearth.sh
  '';
  vintagestory = pkgs.writeShellScriptBin "vintagestory" ''
    cd /home/nick/NixOS/scripts/bash
    ./vintage-story.sh
  '';
in {
  environment.systemPackages = [
    wake_timber_hearth 
    nix-menu
    vintagestory 
  ];
}
