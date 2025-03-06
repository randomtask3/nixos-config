{ config,
  lib,
  pkgs,
  ... 
}:{
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    # stalled-download-timeout = 1000;
    trusted-users = [ "nick" ];
    substituters = [
      # cache mirror located in China
      # status: https://mirror.sjtu.edu.cn/
      #"https://mirror.sjtu.edu.cn/nix-channels/store"
      # status: https://mirrors.ustc.edu.cn/status/
      # "https://mirrors.ustc.edu.cn/nix-channels/store"
      "https://cache.nixos.org"
    ];
    trusted-public-keys = [
      # the default public key of cache.nixos.org, it's built-in, no need to add it here
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    ];
  };

  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
      #"electron-12.2.3"
      "dotnet-runtime-6.0.36"
      "dotnet-sdk-wrapped-6.0.428"
      "dotnet-sdk-6.0.428"
    ];
  };

  boot.supportedFilesystems = [ "ntfs" ];

  # Set your time zone.
  time.timeZone = "America/Montreal"; # Set your time zone.
  i18n.defaultLocale = "en_US.UTF-8"; # Select internationalisation properties.
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
    # useXkbConfig = true; # use xkbOptions in tty.
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    options = "";
  };

  #qt.enable = true;
  #qt.platformTheme = "gtk2";
  #qt.style = "gtk2"; 
}
