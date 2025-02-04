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
    protonvpn-cli2
  ];
}
