{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{

  # Enabling Flatpak for enlightenment
  #xdg.portal.enable = true;
  #xdg.portal.config.common.default = "*";
  #xdg.portal.configPackages = [pkgs.gnome-session];
  #xdg.portal.extraPortals = [pkgs.gnome-session];
    
  services = {
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "nick";
      defaultSession = "plasma";
      #defaultSession = "xfce";
    };
    desktopManager.plasma6.enable = true;
    xserver = {
      enable = true;
      displayManager.lightdm.enable = true;
      #desktopManager.xfce.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [ 
    acpi
    acpid
  ];

  services.acpid.enable = true;
}
