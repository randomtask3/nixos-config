{ config,
  lib,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    ./system
    ./packages
    ../../modules
    ../../scripts
  ];
  disabledModules = [
    ../../modules/development
  ];

  networking.hostName = "attlerock";
  system.stateVersion = "24.05";

}
