{ config,
  pkgs,
  helix,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    #helix.packages."${pkgs.system}".helix # Installing package using Flakes
    virtio-win
    teams-for-linux
    wineWowPackages.full
    winetricks dxvk
    #obsidian
  ];
}