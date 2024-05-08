{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  imports = [
    ./kde.nix
    #./gnome.nix
    ./hyprland.nix
    ./xorg.nix
  ];
}