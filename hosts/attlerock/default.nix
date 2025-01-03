{ config,
  lib,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    ./intel.nix
    ./bootloader.nix
    ../../modules
  ];
  disabledModules = [
    ../../modules/work
    ../../modules/server
    ../../modules/packages
    ../../modules/desktop
    ../../modules/system/bootloader.nix
  ];

  networking.hostName = "attlerock";
  system.stateVersion = "24.05";
}
