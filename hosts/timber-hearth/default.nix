{ config,
  lib,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    ./filesystems.nix
    ./grub.nix
    ./amd.nix
    ../../modules
  ];
  disabledModules = [
    ../../modules/work
  ];

  networking.hostName = "timber-hearth";
  system.stateVersion = "23.11";
}