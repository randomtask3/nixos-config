{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    wget
    kitty
    mc
    ranger
    nnn
    emacs
    lunarvim
    vscodium
    git-credential-oauth
    wakeonlan
    jellyfin-media-player
    libreoffice
    cifs-utils
    gparted
    lshw
    read-edid
  ];

  services.flatpak.enable = true;
  services.emacs = {
    enable = true;
    package = pkgs.emacs;
  };

  programs.firefox.enable = true;
  programs.neovim.enable = true;

  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["nick"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}
