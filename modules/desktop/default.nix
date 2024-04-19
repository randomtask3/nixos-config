{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  imports = [
    ./gnome.nix
    ./hyprland.nix
    ./xorg.nix
  ];
}