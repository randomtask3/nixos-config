{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    #./kde.nix
    ./gnome.nix
    ./hyprland.nix
    ./xorg.nix
  ];
}