{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{

  services = {
    xserver.enable = true;
    xserver.displayManager.lightdm.enable = true;
    xserver.desktopManager.enlightenment.enable = true;
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "nick";
      defaultSession = "plasma";
    };
    desktopManager.plasma6.enable = true;
  };

  # Enabling Flatpak for enlightenment
  xdg.portal.enable = true;
  xdg.portal.config.common.default = "*";
  #xdg.portal.configPackages = [pkgs.gnome-session];
  xdg.portal.extraPortals = [pkgs.gnome-session];

  environment.systemPackages = with pkgs; [ 
    #connman wpa_supplicant #For enlightenment network manager
    acpi
    acpid
  ];
  services.acpid.enable = true;
  #services.connman.enable = true;

  #environment.plasma6.excludePackages = with pkgs.kdePackages; [
  #  #plasma-browser-integration
  #  konsole
  #  discover
  #];
}
