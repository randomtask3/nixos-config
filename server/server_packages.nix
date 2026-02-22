{ config,
  lib,
  pkgs,
  pkgs-stable,
  helix,
  ... 
}:{
  environment.systemPackages = with pkgs; [    
    #steamcmd
    #protonvpn-gui
    obs-studio
    shotcut
    video2x
    #openvpn openresolv
    #qbittorrent
    #transmission_4-gtk
    #proton-vpn-cli
  ];
}
