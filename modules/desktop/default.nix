{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    #./gnome.nix
    ./kde.nix
    #./hyprland.nix
    ./xorg.nix
  ];
}
