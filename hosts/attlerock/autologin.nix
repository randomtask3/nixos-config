{ config,
  pkgs,
  pkgs-unstable,
  ...
}:{
  services.displayManager.sddm = {
    autoLogin.enable = true;
    autoLogin.user = 'nick';
  }
}
