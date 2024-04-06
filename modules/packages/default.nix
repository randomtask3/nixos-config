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
}