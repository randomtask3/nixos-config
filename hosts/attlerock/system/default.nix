{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    ./bootloader.nix
    ./hardware-configuration.nix
    ./intel.nix
    ./kde.nix
    ./networking.nix
  ];
}