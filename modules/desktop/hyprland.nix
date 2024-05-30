{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  programs.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
    };
  };
}