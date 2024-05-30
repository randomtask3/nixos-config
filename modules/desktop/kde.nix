{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  services = {
    xserver.displayManager.sddm.enable = true;
    xserver.desktopManager.plasma5.enable = true;
    #desktopManager.plasma6.enable = true;
  };
}