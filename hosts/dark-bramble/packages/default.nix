{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  imports = [
    ./development.nix
    ./steam.nix
  ];
}