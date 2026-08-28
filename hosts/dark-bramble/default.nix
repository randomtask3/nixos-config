{ config,
  lib,
  ... 
}:{
  imports = [
    ./grub-entry.nix
    ./hardware-configuration.nix
    ./networking.nix
    ../../modules/common
    ../../modules/desktop/xfce.nix
    ../../modules/bootloader/grub.nix
    ../../modules/gaming
    ../../modules/hardware/amd.nix
    ../../modules/clients
    ../../modules/services/ollama-rocm.nix
    ../../scripts
    ../../theme
  ];
  disabledModules = [
    #../../system/desktop.nix
  ];

  networking.hostName = "dark-bramble";
  system.stateVersion = "26.05";
}
