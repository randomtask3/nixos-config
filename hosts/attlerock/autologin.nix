{ config,
  pkgs,
  pkgs-unstable,
  ...
}:{

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  services = {
    xserver.enable = true;
    xserver.displayManager.lightdm.enable = true;
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "nick";
    };
    desktopManager.plasma6.enable = true;
  };

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    #plasma-browser-integration
    konsole
  ];
}
