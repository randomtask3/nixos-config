{ self, 
  config, 
  lib, 
  pkgs, 
  ... 
}:{
  services.nextcloud = {
    enable = true;
    package = pkgs.nextcloud28;
    hostName = "timber-hearth";
    #datadir = "/home/nick/Media/Nextcloud";
    #https = true;
    database.createLocally = true;
    config = {
      dbtype = "pgsql";
      adminpassFile = "/etc/ncpass";
    };
    settings.trusted_domains = [ "192.168.1.124" ];
  };
}