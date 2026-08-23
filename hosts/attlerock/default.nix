{ config,
  lib,
  pkgs,
  pkgs-stable,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    ./networking.nix
    ../../modules/desktop/plasma.nix
    ../../modules/bootloader/systemd-boot.nix
    ../../modules/common
    ../../modules/hardware/n100.nix
    ../../modules/clients
    ../../scripts
  ];
  disabledModules = [
    ../../system/desktop.nix
  ];

  networking.hostName = "attlerock";
  system.stateVersion = "24.05";

}
