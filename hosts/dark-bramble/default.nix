{ config,
  lib,
  ... 
}:{
  imports = [
    ./system
    ../../system
    ../../scripts
    ../../theme
  ];
  disabledModules = [
    #../../system/desktop.nix
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "25.11";
}
