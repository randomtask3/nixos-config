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
    #../../system/desktop.nix
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "24.11";
}
