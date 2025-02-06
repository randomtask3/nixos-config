{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
    ./bootloader.nix
    ./hardware-configuration.nix
    #./thinkpad-p52s.nix
  ];
}