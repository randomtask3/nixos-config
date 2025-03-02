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
    };
    desktopManager.plasma6.enable = true;
  };

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    #plasma-browser-integration
    konsole
    discover
  ];
}
