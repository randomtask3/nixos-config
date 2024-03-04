{
  # networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  #networking.firewall.enable = true;
  #networking.firewall.enable = false;
  #networking.firewall = {
  #  enable = true;
  #  allowedTCPPorts = [ 80 443 ];
  #  allowedUDPPortRanges = [
  #    { from = 4000; to = 4007; }
  #    { from = 8000; to = 8010; }
  #  ];
  #};
}