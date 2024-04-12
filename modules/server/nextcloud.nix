{ self, 
  config, 
  lib, 
  pkgs, 
  ... 
}:{
  environment.etc."nextcloud-admin-pass".text = "nick";
  services.nextcloud = {
    enable = true;
    package = pkgs.nextcloud28;
    hostName = "localhost";
    config.adminpassFile = "/etc/nextcloud-admin-pass";
  };
}
/*
  security.acme = {
    acceptTerms = true;
    defaults.email = "nbrooker@proton.me";
  };
  
  services = {
    nginx.virtualHosts = {
      "dark.bramble.com" = {
        forceSSL = true;
        enableACME = true;
      };

      #"onlyoffice.example.com" = {
      #  forceSSL = true;
      #  enableACME = true;
      #};
    };

    nextcloud = {
      enable = true;
      hostName = "dark.bramble.com";

       # Need to manually increment with every major upgrade.
      package = pkgs.nextcloud27;

      # Let NixOS install and configure the database automatically.
      database.createLocally = true;

      # Let NixOS install and configure Redis caching automatically.
      configureRedis = true;

      # Increase the maximum file upload size to avoid problems uploading videos.
      maxUploadSize = "16G";
      https = true;

      autoUpdateApps.enable = true;
      extraAppsEnable = true;
      extraApps = with config.services.nextcloud.package.packages.apps; {
        # List of apps we want to install and are already packaged in
        # https://github.com/NixOS/nixpkgs/blob/master/pkgs/servers/nextcloud/packages/nextcloud-apps.json
        inherit calendar contacts mail notes onlyoffice tasks;

        # Custom app installation example.
        #cookbook = pkgs.fetchNextcloudApp rec {
        #  url =
        #    "https://github.com/nextcloud/cookbook/releases/download/v0.10.2/Cookbook-0.10.2.tar.gz";
        #  sha256 = "sha256-XgBwUr26qW6wvqhrnhhhhcN4wkI+eXDHnNSm1HDbP6M=";
        #};
      };

      settings = {
        defaultPhoneRegion = "CA";
        overwriteProtocol = "https";
      };
      config = {
        dbtype = "pgsql";
        adminuser = "randomtask";
        adminpassFile = "/home/nick/Documents/nc_pass";
      };
    };

    #onlyoffice = {
    #  enable = true;
    #  hostname = "onlyoffice.example.com";
    #};
  };
}
*/