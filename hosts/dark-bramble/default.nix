{ config,
  lib,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    ./nvidia.nix
    ../../modules
  ];
  disabledModules = [
    ../../modules/packages/games.nix 
    ../../modules/packages/development.nix
    ../../modules/packages/utilities.nix
    ../../modules/server
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "23.11";
}