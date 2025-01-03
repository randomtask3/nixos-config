{ config,
  lib,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    ./filesystems.nix
    ./grub.nix
    ./server
    #./amd.nix
    ../../modules
    ../../scripts
    ../../theme
  ];
  disabledModules = [
    ../../modules/work
  ];

  networking.hostName = "timber-hearth";
  system.stateVersion = "24.11";
}
