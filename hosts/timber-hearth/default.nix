{ config,
  lib,
  ... 
}:{
  imports = [
    ./system
    ../../modules
    ../../server
    ../../system
    ../../scripts
    ../../theme
  ];
  disabledModules = [
    #../modules/work
    #../../modules/desktop
  ];

  networking.hostName = "timber-hearth";
  system.stateVersion = "25.11";
}
