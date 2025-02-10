{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  
  programs = {
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    sway.enable = true;
    # wayfire.enable = true;  ## Not working
  };

  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    desktopManager.gnome.enable = true;
    desktopManager.enlightenment.enable = true;

    windowManager = {
      qtile.enable = true;
      bspwm.enable = true;
      stumpwm.enable = true;
      i3.enable = true;
      dwm.enable = true;
      awesome.enable = true;
      icewm.enable = true;
      openbox.enable = true;
    };
  };
  
  environment.systemPackages = with pkgs; [ 
    gnome-tweaks
    rofi-wayland
    gcolor3 
  ];

  #environment.gnome.excludePackages = (with pkgs; [
  #  gnome-photos
  #  gnome-tour
  #  gedit
  #]) ++ (with pkgs.gnome; [
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
  #]);
}
