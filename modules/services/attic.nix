{
  networking.firewall.allowedTCPPorts = [
    8084
  ];

  services.atticd = {
    enable = true;

    settings = {
      listen = "0.0.0.0:8084";
    };

    environmentFile = "/root/.attic-env-file";
  };
}