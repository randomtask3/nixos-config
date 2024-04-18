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
    git-credential-manager
  ];

  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    #config.credential.helper = "libsecret";
  };
}