{ config,
  lib,
  pkgs,
  pkgs-stable,
  helix,
  ... 
}:{
  environment.systemPackages = with pkgs; [    
    steamPackages.steamcmd
  ];
}