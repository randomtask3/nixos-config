{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    paprefs
  ];

  hardware = {
    bluetooth.enable = true;
    opentabletdriver.enable = true;
    # opengl = {
      # enable = true;
      # driSupport = true;
      # driSupport32Bit = true;
      # extraPackages = [pkgs.mesa.drivers];
      # extraPackages32 = with pkgs; [driversi686Linux.amdvlk];
    # };
  };

  programs.dconf.enable = true;


  # Enable sound.
  #sound.enable = true;
  services.pulseaudio.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = false;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want Jack applications
    jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    # media-session.enable = true;
  };

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;
}