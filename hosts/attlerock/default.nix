{ config,
  lib,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    ./system
    ./packages
    ../../system
    ../../scripts
  ];
  disabledModules = [
    ../../system/desktop.nix
  ];

  networking.hostName = "attlerock";
  system.stateVersion = "24.05";

}
