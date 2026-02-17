{ config,
  lib,
  ... 
}:{
  imports = [
    ./system
    ./server
    ../../modules
    #../../server
    ../../system
    ../../scripts
    ../../theme
  ];
  disabledModules = [
    #../../system/desktop.nix
  ];

  networking.hostName = "interloper";
  system.stateVersion = "25.11";
}
