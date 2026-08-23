{ config,
  lib,
  ... 
}:{
  imports = [
    ./filesystem.nix
    ./hardware-configuration.nix
    ./networking.nix
    ../../modules/common
    ../../modules/desktop/xfce.nix
    ../../modules/bootloader/grub.nix
    ../../modules/gaming
    ../../modules/hardware/amd.nix
    ../../modules/clients
    ../../scripts
    ../../theme
  ];
  disabledModules = [
    #../../system/desktop.nix
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "26.05";
}
