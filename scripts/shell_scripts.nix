{ pkgs, ... }:
let
  nix-menu = pkgs.writeShellScriptBin "nix-menu" ''
    cd /home/nick/NixOS/scripts/bash
    bash nixos_menu.sh
  '';
  wake_timber_hearth = pkgs.writeShellScriptBin "wake_timber_hearth" ''
    cd /home/nick/NixOS/scripts/bash
    bash wake_timber_hearth.sh
  '';
  vintagestory = pkgs.writeShellScriptBin "vintagestory" ''
    cd /home/nick/NixOS/scripts/bash
    bash vintage-story.sh
  '';
in {
  environment.systemPackages = [
    wake_timber_hearth 
    nix-menu
    vintagestory 
  ];
}
