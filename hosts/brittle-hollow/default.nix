{ config,
  lib,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    ./networking.nix
    ../../modules/common
    ../../modules/bootloader/grub.nix
    ../../modules/desktop/xfce.nix
    #../../modules/hardware/thinkpad-e15.nix
    ../../modules/clients
    ../../scripts
    ../../theme
  ];
  disabledModules = [
    #../../system/desktop.nix
  ];

  networking.hostName = "brittle-hollow";
  system.stateVersion = "25.11";
}
