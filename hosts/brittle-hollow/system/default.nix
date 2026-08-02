{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  imports = [
    ./bootloader.nix
    ./filesystem.nix
    ./hardware-configuration.nix
    ./networking.nix
  ];
}