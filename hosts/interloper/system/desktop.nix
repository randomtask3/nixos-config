{ config,
  pkgs,
  pkgs-stable,
  jovian,
  lib,
  ... 
}:{
    
  services = {
    displayManager = {
      #sddm.enable = true;
      #autoLogin.enable = true;
      #autoLogin.user = "nick";
      #defaultSession = "";
    };
    xserver = {
      enable = true;
      #desktopManager.enlightenment.enable = true;
      displayManager.lightdm.enable = true;
      windowManager = {
        bspwm.enable = true;
        dwm.enable = true;
        openbox.enable = true;
        icewm.enable = true;
      };
    };
  };

  environment.systemPackages = with pkgs; [ 
    acpi
    acpid
  ];

  services.acpid.enable = true;

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
    hardware.has.amd.gpu = false;
  };
  #programs.xwayland.enable = true;
  networking.networkmanager.enable = true;
}
