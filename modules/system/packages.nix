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
    neovim
    lunarvim
    vscodium
    git-credential-oauth
    wakeonlan
  ];

  services.flatpak.enable = true;
  services.emacs = {
    enable = true;
    package = pkgs.emacs;
  };

  programs.firefox.enable = true;
  programs.neovim.enable = true;
}
