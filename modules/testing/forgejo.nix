{ config, 
  lib, 
  ... 
}:{
  services.forgejo = {
    enable = true;
    stateDir = "/srv/forgejo";

    database.type = "sqlite3";

    settings = {
      server = {
        DOMAIN = "10.66.0.11";
        ROOT_URL = "http://10.66.0.11:3000/";
        HTTP_PORT = 3000;
      };

      service.DISABLE_REGISTRATION = true;
      actions.ENABLED = true;
    };
  };

  networking.firewall.allowedTCPPorts = [
    3000
  ];

  systemd.tmpfiles.rules = [
    "d /srv/forgejo        0750 forgejo forgejo -"
    "d /srv/forgejo/custom 0750 forgejo forgejo -"
    "d /srv/forgejo/custom/conf 0750 forgejo forgejo -"
  ];
}
