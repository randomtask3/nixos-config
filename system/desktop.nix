{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
    
  services = {
    displayManager = {
      sddm.enable = true;
      #autoLogin.enable = true;
      #autoLogin.user = "nick";
      #defaultSession = "";
    };
    xserver = {
      enable = true;
      desktopManager.enlightenment.enable = true;
      #displayManager.lightdm.enable = true;
      windowManager = {
        #qtile.enable = true;
        bspwm.enable = true;
        #stumpwm.enable = true;
        dwm.enable = true;
        openbox.enable = true;
        icewm.enable = true;
      };
    };
  };

  programs = {
    #hyprland = {
    #  enable = true;
    #  xwayland.enable = true;
    #};
    #sway.enable = true;
    # wayfire.enable = true;  ## Not working
  };

  environment.systemPackages = with pkgs; [ 
    acpi
    acpid
    connman
  ];

  services.acpid.enable = true;
  services.connman.enable = true;
}