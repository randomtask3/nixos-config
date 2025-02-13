{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    ./bootloader.nix
    ./desktop.nix
    ./hardware-configuration.nix
    ./networking.nix
    ./thinkpad-p52s.nix
  ];
}