{ config,
  lib,
  ... 
}:{
  imports = [
    ./system
    #./server
    ../../modules
    #../../server
    ../../system
    ../../scripts
    ../../theme
  ];
  disabledModules = [
    #../../system/desktop.nix
  ];

  networking.hostName = "brittle-hollow";
  system.stateVersion = "25.11";
}
