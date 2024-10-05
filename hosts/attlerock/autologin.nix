{ config,
  pkgs,
  pkgs-unstable,
  ...
}:{
  services.displayManager = {
    autoLogin.enable = true;
    autoLogin.user = 'username';
  }
}
