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
    transmission_4-gtk
    protonvpn-cli_2
  ];
}
