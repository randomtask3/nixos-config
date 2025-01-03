{ config,
  lib,
  ... 
}:{
  imports = [
    ./packages
    ./server
    ./system
    ../../modules
    ../../scripts
    ../../theme
  ];
  disabledModules = [
    #../modules/work
  ];

  networking.hostName = "timber-hearth";
  system.stateVersion = "24.11";
}
