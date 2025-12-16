{ config,
  pkgs,
  pkgs-stable,
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