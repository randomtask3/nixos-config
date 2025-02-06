{ config,
  lib,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    #./nvidia.nix
    ./desktop
    ../../modules
    ./bootloader.nix
  ];
  disabledModules = [
    #../../modules/gaming
    ../../modules/desktop
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "24.11";
}
