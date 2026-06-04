{ jovian,
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
    steam.enable = true;
    hardware.has.amd.gpu = true;
    #steam.autoStart = true;
    steam.desktopSession = "plasma";
  };

}