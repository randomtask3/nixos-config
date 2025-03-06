{ config,
  lib,
  ... 
}:{
  imports = [
    ./packages
    ./system
    ../../systeam
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
