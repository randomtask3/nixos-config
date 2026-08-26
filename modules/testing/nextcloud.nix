{ config, pkgs, ... }:

{
  services.postgresql = {
    enable = true;

    ensureDatabases = [ "nextcloud" ];

    ensureUsers = [
      {
        name = "nextcloud";
        ensureDBOwnership = true;
      }
    ];
  };
  
  services.nextcloud = {
    enable = true;

    hostName = "10.66.0.11";

    database.createLocally = true;
    config = {
      dbtype = "pgsql";
      adminuser = "nick";
      adminpassFile = "/srv/secrets/nextcloud-admin";
    };

    home = "/srv/nextcloud";

    settings = {
      trusted_domains = [
        "10.66.0.11"
        "interloper"
      ];

      default_phone_region = "CA";
      maintenance_window_start = 1;
      log_type = "systemd";
    };
  };

  networking.firewall.allowedTCPPorts = [
    80
    443
  ];
}
