{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    wget
    kitty
    #mc
    emacs
    lunarvim
    vscodium
    git-credential-oauth
    wakeonlan
    jellyfin-media-player
  ];

  services.flatpak.enable = true;
  services.emacs = {
    enable = true;
    package = pkgs.emacs;
  };

  programs.firefox.enable = true;
  programs.neovim.enable = true;
}
