{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    wget
    firefox
    kitty
    #mc
    dialog
    emacs
    git-credential-oauth
  ];

  services.flatpak.enable = true;
  services.emacs = {
    enable = true;
    package = pkgs.emacs;
  };
}
