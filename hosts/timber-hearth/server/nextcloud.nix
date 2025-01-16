{ self, 
  config, 
  lib, 
  pkgs, 
  ... 
}:{
  services.nextcloud = {
    enable = true;
    package = pkgs.nextcloud29;
    hostName = "timber-hearth";
    #datadir = "/home/nick/Media/Nextcloud";
    #https = true;
    database.createLocally = true;
    config = {
      dbtype = "pgsql";
      adminpassFile = "/etc/ncpass";
      #extraTrustedDomains = [ "192.168.1.124" ];
    };
    settings.trusted_domains = [ "10.66.0.10" ];
  };
}
