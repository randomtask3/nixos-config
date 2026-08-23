{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
    
  services = {
    #desktopManager.plasma6.enable = true;
    displayManager = {
      sddm.enable = true;
      #autoLogin.enable = true;
      #autoLogin.user = "nick";
      #defaultSession = "none+icewm";
      #defaultSession = "plasma";
    };
    xserver = {
      enable = true;
      desktopManager = {
        xfce = {
          enable = true;
          enableScreensaver = true;
          enableWaylandSession = true;
          #noDesktop = true;
          enableXfwm = true;
        };
        #enlightenment.enable = true;
        #lxqt.enable = true;
        #kodi.enable = true;
      };
      #displayManager.lightdm.enable = true;
      windowManager = {
        #qtile.enable = true;
        #bspwm.enable = true;
        #stumpwm.enable = true;
        #dwm.enable = true;
        openbox.enable = true;
        icewm.enable = true;
      };
    };
  };

  programs = {
    #niri.enable = true;
    #hyprland = {
    #  enable = true;
    #  xwayland.enable = true;
    #};
    #sway.enable = true;
    # wayfire.enable = true;  ## Not working
  };

  
  environment.systemPackages = with pkgs; [ 
    xfce4-whiskermenu-plugin
  ];
}