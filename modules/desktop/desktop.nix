{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    #displayManager.sddm.enable = true;
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
      stumpwm.enable = true;
      openbox.enable = true;
    };
  };

  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
    gedit
  ]) ++ (with pkgs.gnome; [
    cheese # webcam tool
    gnome-music
    gnome-terminal
    epiphany # web browser
    geary # email reader
    evince # document viewer
    gnome-characters
    totem # video player
    tali # poker game
    iagno # go game
    hitori # sudoku game
    atomix # puzzle game
  ]);
}