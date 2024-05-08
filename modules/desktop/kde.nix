{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  services = {
    displayManager.sddm.enable = true;
    desktopManager.plasma6.enable = true;
  };

}