{ config,
  lib,
  ... 
}:{
  imports = [
    ./desktop
    ./system
    ../../modules
    ../../scripts
  ];
  disabledModules = [
    #../../modules/gaming
    ../../modules/desktop
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "24.11";
}
