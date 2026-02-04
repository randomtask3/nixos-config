{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    wget
    kitty
    yazi
    #lunarvim
    vscodium
    git-credential-oauth
    wakeonlan
    #jellyfin-media-player
    libreoffice
    cifs-utils
    gparted
    #lshw
    #read-edid
  ];

  services.flatpak.enable = true;

  programs.firefox.enable = true;
  programs.neovim.enable = true;

  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["nick"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}
