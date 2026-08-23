{ config,
  lib,
  ... 
}:{
  imports = [
    ./filesystem.nix
    ./hardware-configuration.nix
    ./networking.nix
    ../../modules/common
    ../../modules/bootloader/grub.nix
    ../../modules/desktop/xfce.nix
    ../../modules/hardware/thinkpad-p52s.nix
    ../../modules/testing
    ../../scripts
    ../../theme
  ];
  disabledModules = [
    #../../system/desktop.nix
  ];
  networking.hostName = "interloper";
  system.stateVersion = "25.11";
}
