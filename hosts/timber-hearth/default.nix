{ config,
  lib,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    ./filesystems.nix
    ../../modules
  ];
  disabledModules = [
    ../../modules/packages/work.nix 
  ];

  networking.hostName = "timber-hearth";
  system.stateVersion = "23.11";
}