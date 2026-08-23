{ config,
  lib,
  ... 
}:{
  imports = [
    ./filesystems.nix
    ./hardware-configuration.nix
    ./networking.nix
    ../../modules/common
    ../../modules/bootloader/grub.nix
    ../../modules/desktop/xfce.nix
    #../../modules/hardware/t400.nix
    ../../modules/services
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
