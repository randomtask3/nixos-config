{ config,
  lib,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    ./filesystems.nix
    ./module_selections.nix
    ../../modules
  ];

  networking.hostName = "timber-hearth";
  system.stateVersion = "23.11";
}