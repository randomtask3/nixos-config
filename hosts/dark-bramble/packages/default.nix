{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
  ];

  environment.systemPackages = with pkgs; [
    jellyfin-media-player
    #brave
  ];
}