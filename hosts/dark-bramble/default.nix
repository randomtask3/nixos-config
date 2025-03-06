{ config,
  lib,
  ... 
}:{
  imports = [
    ./packages
    ./system
    ../../system
    ../../scripts
    ../../theme
  ];
  disabledModules = [
    #../../modules/gaming
    ../../modules/desktop
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "24.11";
}
