{
  services = {
    xserver = {
      enable = true; # Enable the X11 windowing system.
      displayManager = {
        # gdm.enable = true;
        sddm.enable = true;
        # lightdm.enable = true;
        # startx.enable = true;
      };
      desktopManager = {
        # gnome.enable = true;
        plasma5.enable = true;
        # xfce.enable = true;
        enlightenment.enable = true;
        # mate.enable = true;
        # pantheon.enable = true;
        # cinnamon.enable = true;
        # kodi.enable = true;
        # retroarch.enable = true;
        # xterm.enable = true;
        # lxqt.enable = true;
      };
      windowManager = {
        bspwm.enable = true;
        # ratpoison.enable = true;
        awesome.enable = true;
        # dwm.enable = true;
        leftwm.enable = true;
        # openbox.enable = true;
        # qtile.enable = true;
        # xmonad.enable = true;
        # i3.enable = true;
        # jwm.enable = true;
        # icewm.enable = true;
        # fluxbox.enable = true;
        # spectrwm.enable = true;
        # berry.enable = true;
      }; 
  };};
}
