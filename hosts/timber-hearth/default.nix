{ config,
  lib,
  ... 
}:{
  imports = [
    ./amd.nix
    ./hardware-configuration.nix
    ./filesystems.nix
    ../../modules
  ];
  disabledModules = [
    ../../modules/work
  ];

  networking.hostName = "timber-hearth";
  system.stateVersion = "23.11";
}