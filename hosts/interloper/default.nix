{ config,
  lib,
  ... 
}:{
  imports = [
    ./system
    #./server
    ../../modules
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
