{ config,
  lib,
  ... 
}:{
  imports = [
    ./system
    ./testing
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
