{ pkgs, ... }:
let
  nix-menu = pkgs.writeShellScriptBin "nix-menu" ''
    cd /home/nick/NixOS/scripts/bash
    ./nixos_menu.sh
  '';
  nvidia-offload = pkgs.writeShellScriptBin "nvidia-offload" ''
    export __NV_PRIME_RENDER_OFFLOAD=1
    export __NV_PRIME_RENDER_OFFLOAD_PROVIDER=NVIDIA-G0
    export __GLX_VENDOR_LIBRARY_NAME=nvidia
    export __VK_LAYER_NV_optimus=NVIDIA_only
    exec "$@"
  '';
  vintagestory = pkgs.writeShellScriptBin "vintagestory" ''
    cd /home/nick/NixOS/scripts/bash
    ./vintage-story.sh
  '';
in {
  environment.systemPackages = [ 
    nix-menu
    nvidia-offload
    vintagestory 
  ];
}