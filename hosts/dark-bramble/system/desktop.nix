{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
    
  services = {
    displayManager = {
      #autoLogin.enable = true;
      #autoLogin.user = "nick";
      #defaultSession = "";
    };
    xserver = {
      enable = true;
      desktopManager.enlightenment.enable = true;
      displayManager.lightdm.enable = true;
      windowManager = {
        bspwm.enable = true;
        dwm.enable = true;
        openbox.enable = true;
        icewm.enable = true;
      };
    };
  };

  environment.systemPackages = with pkgs; [ 
    acpi
    acpid
  ];

  services.acpid.enable = true;
}