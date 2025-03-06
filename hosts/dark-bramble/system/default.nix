{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    ./bootloader.nix
    #./filesystem.nix
    ./hardware-configuration.nix
    ./networking.nix
    ./thinkpad-p52s.nix
    ./wm.nix
  ];
}