{ pkgs, ... }:
let
  nix-menu = pkgs.writeShellScriptBin "nix-menu" ''
    cd /home/nick/NixOS/scripts/bash
    bash nixos_menu.sh
  '';
  dev-menu = pkgs.writeShellScriptBin "dev-menu" ''
    cd /home/nick/NixOS/scripts/bash
    bash dev_menu.sh
  '';
  pull-nix = pkgs.writeShellScriptBin "pull-nix" ''
    cd /home/nick/NixOS/scripts/bash
    bash pull-nix.sh
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
    dev-menu
    pull-nix
    vintagestory 
  ];
}
