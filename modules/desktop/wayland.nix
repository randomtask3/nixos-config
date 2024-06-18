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
  };
  
  environment.systemPackages = with pkgs; [ 
    wofi
    gcolor3 
  ];
}
