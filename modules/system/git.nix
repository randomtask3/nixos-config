{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    config = {
      credential.helper = "oauth";
      #push = { autoSetupRemote = true; };
      user.Name  = "randomtask3";
      user.Email = "nbrooker@proton.me";
      #pull.rebase = false;
    };
  };
}