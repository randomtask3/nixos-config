{ config,
  lib,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    #pkgs-unstable.package_name
    virtio-win
    #teams-for-linux
    wineWowPackages.full winetricks dxvk
    glxinfo lshw
    #obsidian
  ];

  virtualisation.libvirtd.enable = true;
  programs = {
    virt-manager.enable = true;
  };
}
