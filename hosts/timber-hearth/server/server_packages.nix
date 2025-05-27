{ config,
  lib,
  pkgs,
  pkgs-unstable,
  helix,
  ... 
}:{
  environment.systemPackages = with pkgs; [    
    #steamcmd
    protonvpn-gui
    openvpn openresolv
    qbittorrent
    transmission_4-gtk
    pkgs-unstable.protonvpn-cli_2
    #protonvpn-cli
  ];
}
