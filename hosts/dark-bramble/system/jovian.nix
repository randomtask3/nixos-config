{ config,
  pkgs,
  pkgs-stable,
  jovian,
  lib,
  ... 
}:{

  # These are all the unfree dependencies required by `jovian.steam.enable`
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "steamdeck-hw-theme"
      "steam-jupiter-unwrapped"
      "steam"
    ];

  jovian = {
    steam = {
      enable = true;
      #user = "nick";
      #autoStart = true;
      #desktopSession = "none+icewm";
    };
    hardware.has.amd.gpu = true;
  };
  #programs.xwayland.enable = true;
  networking.networkmanager.enable = true;
}