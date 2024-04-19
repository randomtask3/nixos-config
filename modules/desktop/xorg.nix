{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  services.xserver = {
    enable = true;
    windowManager = {
      bspwm.enable = true;
      stumpwm.enable = true;
      openbox.enable = true;
    };
  };
}