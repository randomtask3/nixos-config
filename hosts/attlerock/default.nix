{ config,
  lib,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    ./hardware-configuration.nix
    ./intel.nix
    ./bootloader.nix
    ../../modules
  ];
  disabledModules = [

  ];

  networking.networkmanager.enable = true;
  networking.hostName = "attlerock";
  system.stateVersion = "24.05";

  environment.systemPackages = with pkgs; [
    jellyfin-media-player
    brave
  ];
}
