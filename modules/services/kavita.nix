{
  services.kavita = {
    enable = true;
    package = pkgs.kavita;
    user = "nick";
    group = "users";

    settings = {
      Port = 5000;
      IpAddresses = "0.0.0.0,::";
    };
    dataDir = "/srv/kavita";
  };

  networking.firewall.allowedTCPPorts = [
    5000
  ];
}