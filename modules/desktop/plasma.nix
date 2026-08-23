{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{

  services = {
    xserver.enable = true;
    xserver.displayManager.lightdm.enable = true;
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "nick";
      defaultSession = "plasma";
    };
    desktopManager.plasma6.enable = true;
  };

  #environment.plasma6.excludePackages = with pkgs.kdePackages; [
  #  #plasma-browser-integration
  #  konsole
  #  discover
  #];
}
