{
  networking = {
    networkmanager.enable = true;
    hosts = {
      "127.0.0.2" = ["other-localhost"];
    };
    dhcpcd.enable = false;
    interfaces.enp34s0 = {
      wakeOnLan.enable = true;
      #wakeOnLan.policy = "magic";
      ipv4.addresses = [{
        address = "10.66.0.10";
        prefixLength = 24;
      }];
    };

    defaultGateway = "10.66.0.1";
    nameservers = [ "1.1.1.1" "8.8.8.8" ];

    #vlans = {
    #  vlan100 = { id=100; interface="enp2s0"; };
    #  vlan101 = { id=101; interface="enp2s0"; };
    #};
    #interfaces.vlan100.ipv4.addresses = [{
    #  address = "10.1.1.2";
    #  prefixLength = 24;
    #}];
    #interfaces.vlan101.ipv4.addresses = [{
    #  address = "10.10.10.3";
    #  prefixLength = 24;
    #}];
  };

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
