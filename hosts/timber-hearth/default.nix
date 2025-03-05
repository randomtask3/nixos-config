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
    ../modules/desktop
  ];

  networking.hostName = "timber-hearth";
  system.stateVersion = "24.11";
}
