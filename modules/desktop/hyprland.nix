{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  programs.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
    };
  };
}