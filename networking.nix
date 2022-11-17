{
  networking = {
    hostName = "nixos"; # Define your hostname.
    # Pick only one of the below networking options.
    # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
    networkmanager.enable = true;  # Easiest to use and most distros use this by default.
    
    # useDHCP = false;
    # interfaces = {
      # enp34s0.useDHCP = true;
      # wlp38s0.useDHCP = true;
    # };
    # wireless = {
      # enable = true; # Enables via wpa_supplicant
      # networks = {
        # SSID = {
          # psk = "Password";
    # };};};

    # Configure network proxy if necessary
    # proxy.default = "http://user:password@proxy:port/";
    # proxy.noProxy = "127.0.0.1,localhost,internal.domain";
    
    # Open ports in the firewall.
    # firewall.allowedTCPPorts = [ ... ];
    # firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    # firewall.enable = false;
  };
  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
} 
