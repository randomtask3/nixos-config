{
  services.adguardhome = {
    enable = true;
    host = "0.0.0.0";
    port = 3002;
    openFirewall = true;
  };

  networking.firewall.allowedTCPPorts = [
    53
    3002
  ];

  networking.firewall.allowedUDPPorts = [
    53
  ];
}