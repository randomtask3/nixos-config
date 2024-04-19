{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  programs.hyprland = {
    enable = true;
    nvidiaPatches = true;
    xwayland = {
      hidpi = true;
      enable = true;
    }
  }
}