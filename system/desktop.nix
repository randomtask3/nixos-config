{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
    
  services = {
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "nick";
      defaultSession = "plasma";
    };
    desktopManager.plasma6.enable = true;
    xserver = {
      enable = true;
      displayManager.lightdm.enable = true;
      windowManager = {
        #bspwm.enable = true;
        #dwm.enable = true;
      };
    };
    };
  };

  environment.systemPackages = with pkgs; [ 
    acpi
    acpid
  ];

  services.acpid.enable = true;
}
