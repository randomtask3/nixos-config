{ config,
  lib,
  pkgs,
  pkgs-stable,
  helix,
  ... 
}:{
  options = {
    work.enable = lib.mkEnableOption "enables work";
  };

  environment.systemPackages = with pkgs; [
    #helix.packages."${pkgs.system}".helix # Installing package using Flakes
    #pkgs-stable.package_name
    virtio-win
    teams-for-linux
    wineWowPackages.full winetricks dxvk
    glxinfo lshw
    #obsidian
  ];

  virtualisation.libvirtd.enable = true;
  programs = {
    virt-manager.enable = true;
  };
}