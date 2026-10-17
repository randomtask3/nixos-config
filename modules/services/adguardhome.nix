{
  services.adguardhome = {
    enable = true;
    #host = "0.0.0.0";
    #port = 3002;
    openFirewall = true;

    settings = {
      http.address = "10.66.0.10:3002";
    };
  };

  networking.firewall.allowedTCPPorts = [
    53
    3002
  ];

  networking.firewall.allowedUDPPorts = [
    53
  ];
}