{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    ./bootloader.nix
    ./hardware-configuration.nix
    ./networking.nix
    #./thinkpad-p52s.nix
  ];
}