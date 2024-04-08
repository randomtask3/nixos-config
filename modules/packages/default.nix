{ config,
  lib,
  ... 
}:{
  imports = [
    ./development.nix
    ./games.nix
    ./system.nix
    ./utilities.nix
    ./work.nix
  ];
}