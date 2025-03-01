{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  
  programs = {
    #hyprland = {
    #  enable = true;
    #  xwayland.enable = true;
    #};
    #sway.enable = true;
    # wayfire.enable = true;  ## Not working
  };

  services.displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "nick";
      defaultSession = "enlightenment";
  };

  # Enabling Flatpak for enlightenment
  xdg.portal.enable = true;
  xdg.portal.config.common.default = "*";
  #xdg.portal.configPackages = [pkgs.gnome-session];
  xdg.portal.extraPortals = [pkgs.gnome-session];

  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    #desktopManager.xfce.enable = true;
    desktopManager.enlightenment.enable = true;

    windowManager = {
      qtile.enable = true;
      bspwm.enable = true;
      stumpwm.enable = true;
      #i3.enable = true;
      dwm.enable = true;
      #awesome.enable = true;
      #icewm.enable = true;
      #openbox.enable = true;
    };
  };

  services.connman.enable = true;
  
  environment.systemPackages = with pkgs; [ 
    gnome-tweaks
    connman wpa_supplicant #For enlightenment network manager
    #rofi-wayland
    #gcolor3
  ];

  environment.gnome.excludePackages = (with pkgs; [
    gnome-console
  #  gnome-photos
  #  gnome-tour
  #  gedit
  ]) ++ (with pkgs.gnome; [
  #  cheese # webcam tool
  #  gnome-music
  #  gnome-terminal
  #  epiphany # web browser
  #  geary # email reader
  #  evince # document viewer
  #  gnome-characters
  #  totem # video player
  #  tali # poker game
  #  iagno # go game
  #  hitori # sudoku game
  #  atomix # puzzle game
  ]);
}
