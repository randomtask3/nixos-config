{ config,
  lib,
  pkgs,
  pkgs-stable,
  ... 
}:{
  imports = [
    ./system
    ../../system
    ../../scripts
  ];
  disabledModules = [
    ../../system/desktop.nix
  ];

  networking.hostName = "attlerock";
  system.stateVersion = "24.05";

}
