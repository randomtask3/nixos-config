{ config,
  lib,
  pkgs,
  pkgs-stable,
  helix,
  ... 
}:{
  environment.systemPackages = with pkgs; [    
    #steamcmd
    protonvpn-gui
    #openvpn openresolv
    qbittorrent
    #transmission_4-gtk
    #protonvpn-cli
  ];
}
