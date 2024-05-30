{ config,
  lib,
  pkgs,
  pkgs-unstable,
  helix,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    #helix.packages."${pkgs.system}".helix # Installing package using Flakes
    #pkgs-unstable.package_name
    virtio-win
    teams-for-linux
    wineWowPackages.full winetricks dxvk
    glxinfo lshw
    pkgs-unstable.microsoft-edge
    #obsidian
  ];

  virtualisation.libvirtd.enable = true;
  programs = {
    virt-manager.enable = true;
  };
}