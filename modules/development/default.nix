{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    #./gnome.nix
    ./development.nix
    #./hyprland.nix
    #./xorg.nix
  ];
}
