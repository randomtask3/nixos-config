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

  ];

  networking.networkmanager.enable = true;
  networking.hostName = "attlerock";
  system.stateVersion = "24.05";
}
