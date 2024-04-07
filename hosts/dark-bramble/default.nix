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
  disabledModules = [
    ../../modules/packages/games.nix 
    ../../modules/packages/development.nix
    ../../modules/packages/utilities.nix
    ../../modules/server/samba.nix  
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "23.11";
}