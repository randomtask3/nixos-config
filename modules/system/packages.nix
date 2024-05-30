{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    wget
    firefox
    kitty
    mc
    dialog
    discord
    vscodium
    emacs
    neofetch
    git-credential-oauth
  ];

  services.flatpak.enable = true;
}