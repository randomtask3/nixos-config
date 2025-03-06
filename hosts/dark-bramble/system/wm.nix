{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  
  programs = {
    #hyprland = {
    #  enable = true;
    #  xwayland.enable = true;
    #};
    #sway.enable = true;
    # wayfire.enable = true;  ## Not working
  };

  services.xserver.windowManager = {
    qtile.enable = true;
    bspwm.enable = true;
    stumpwm.enable = true;
    #i3.enable = true;
    dwm.enable = true;
    #awesome.enable = true;
    #icewm.enable = true;
    #openbox.enable = true;
  };
}
