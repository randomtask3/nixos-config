{
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    windowManager = {
      exwm.enable = true;
      #bspwm.enable = true;
      #dwm.enable = true;
    };
  };
}