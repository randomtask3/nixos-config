{ config,
  lib,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    ./nvidia.nix
    ./module_selections.nix
    ../../modules
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "23.11";
}