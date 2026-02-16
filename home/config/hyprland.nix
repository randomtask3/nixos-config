{ catppuccin,
  ...
}:{
  wayland.windowManager.hyprland = {
    catppuccin.enable = true;
    extraConfig = ''test'';
    settings = {
      general = {
        gaps_in = 0;
        gaps_out = 0;
        border_size = 20;
      };
    };
  };
}