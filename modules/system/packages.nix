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
    git-credential-oauth
  ];

  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    config = {
      credential.helper = "oauth";
      #push = { autoSetupRemote = true; };
      user.Name  = "randomtask3";
      user.Email = "nbrooker@proton.me";
    };
  };
}