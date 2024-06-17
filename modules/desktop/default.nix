{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    ./gnome.nix
    ./wayland.nix
    ./xorg.nix
  ];
}