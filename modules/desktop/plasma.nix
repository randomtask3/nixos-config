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
      defaultSession = "plasma-bigscreen-wayland";
      sessionPackages = [ pkgs.kdePackages.plasma-bigscreen ];
    };
    desktopManager.plasma6.enable = true;
  };

  xdg.portal.configPackages = [ pkgs.kdePackages.plasma-bigscreen ];

  environment.systemPackages = with pkgs; [ 
    kdePackages.plasma-bigscreen
  ];

  #environment.plasma6.excludePackages = with pkgs.kdePackages; [
  #  #plasma-browser-integration
  #  konsole
  #  discover
  #];
}
