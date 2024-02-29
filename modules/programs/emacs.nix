{ config, 
  pkgs, 
  ... 
}:{
  environment.systemPackages = with pkgs; [ emacs ];

  services.xserver.windowManager.exwm = {
    enable = true;
    extraPackages = epkgs: [
      epkgs.magit
    ];
  };

  # Optional: Set the Emacs configuration file
  environment.variables = {
    EMACS_LOAD_PATH = "/home/nick/NixOS/modules/programs";
  };
}