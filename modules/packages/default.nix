{ config,
  lib,
  ... 
}:{
  imports = [
    ./development.nix
    ./games.nix
    #./gamescope.nix
    ./system.nix
    ./utilities.nix
    ./work.nix
  ];

  games.enable = lib.mkDefault false;
  work.enable = lib.mkDefault false;
  development.enable = lib.mkDefault false;
  utilities.enable = lib.mkDefault false;
}