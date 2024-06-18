{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  services.xserver = {
    windowManager = {
      #bspwm.enable = true;
      stumpwm.enable = true;
      #i3.enable = true;
      #dwm.enable = true;
      #awesome.enable = true;
      #icewm.enable = true;
      #openbox.enable = true;
    };
  };
}