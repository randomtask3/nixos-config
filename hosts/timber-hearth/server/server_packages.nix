{ config,
  lib,
  pkgs,
  pkgs-unstable,
  helix,
  ... 
}:{
  environment.systemPackages = with pkgs; [    
    #steamcmd
    #protonvpn-gui
    qbittorrent
    protonvpn-cli_2
  ];
}
