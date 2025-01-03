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
    git-credential-oauth
  ];

  services.flatpak.enable = true;
  services.emacs = {
    enable = true;
    package = pkgs.emacs;
  };

  programs.firefox.enable = true;
}
