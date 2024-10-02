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
    #../../modules/gaming
    ../../modules/development
    ../../modules/packages
    ../../modules/server
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "24.05";
}
