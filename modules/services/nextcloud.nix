{ config, pkgs, ... }:

{

  services.nextcloud = {
    enable = true;

    hostName = "10.66.0.10";

    database.createLocally = true;
    config = {
      dbtype = "pgsql";
      adminuser = "nick";
      adminpassFile = "/srv/secrets/nextcloud-admin";
    };

    home = "/srv/nextcloud";

    settings = {
      trusted_domains = [
        "10.66.0.10"
        "timber-hearth"
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
