{ config,
  lib,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    ./intel.nix
    ../../modules
  ];
  disabledModules = [
    ../../modules/work
    ../../modules/server
    ../../modules/packages
  ];

  networking.hostName = "attlerock";
  system.stateVersion = "24.05";
}
