{ config,
  pkgs,
  pkgs-stable,
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
  ];

  programs = {
    git.enable = true;
  };
}