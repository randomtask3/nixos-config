{
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

  security.rtkit.enable = true;
  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;
  };

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  # sound.enable = true;
  # hardware.pulseaudio.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;
}