{ config,
  lib,
  ... 
}:{
  imports = [
    ./packages
    ./system
    ../../modules
    ../../scripts
  ];
  disabledModules = [
    #../../modules/gaming
    ../../modules/desktop
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "24.11";
}
