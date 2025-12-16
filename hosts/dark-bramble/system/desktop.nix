{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{

  # Enabling Flatpak for enlightenment
  xdg.portal.enable = true;
  xdg.portal.config.common.default = "*";
  xdg.portal.configPackages = [pkgs.gnome-session];
  xdg.portal.extraPortals = [pkgs.gnome-session];
    
  services = {
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "nick";
      defaultSession = "xfce";
    };
    xserver = {
      enable = true;
      displayManager.lightdm.enable = true;
      desktopManager.xfce.enable = true;
      windowManager = {
        bspwm.enable = true;
        dwm.enable = true;
      };
    };
  };

  environment.systemPackages = with pkgs; [ 
    acpi
    acpid
  ];

  services.acpid.enable = true;
}
