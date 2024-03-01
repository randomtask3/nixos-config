{
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    #desktopManager.plasma6.enable = true;
    windowManager = {
      #exwm = {
      #  enable = true;
      #  extraPackages = epkgs: [
      #    epkgs.magit
      #  ];
      #};
      #bspwm.enable = true;
      #dwm.enable = true;
      stumpwm.enable = true;
      openbox.enable = true;
    };
  };
}