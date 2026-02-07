{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    wget
    kitty
    #lunarvim
    vscodium
    git-credential-oauth
    wakeonlan
    #jellyfin-media-player
    libreoffice
    cifs-utils
    gparted
    w3m
    #lshw
    #read-edid
  ];

  services.flatpak.enable = true;

  programs.firefox.enable = true;
  programs.neovim.enable = true;
  programs.yazi = {
    enable = true;
    settings = {

    };
  };

  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["nick"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

  environment.variables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
}
