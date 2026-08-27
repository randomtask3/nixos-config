{ config, pkgs, ... }:

{
  #  *** Need to create /srv/nextcloud/config
  #      chown nextcloud:nexcloud, and chmod 775 /srv/nextcloud
  #      make nextcloud-admin in /srv/secrets and chown/chmod
  #      clear database/and or delete config.php

  
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
    #package = pkgs.nextcloud34;

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
