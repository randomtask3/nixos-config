{ self, 
  config, 
  lib, 
  pkgs,
  specialArgs,
  ... 
}:{
    users.users.nextcloud.extraGroups = ["users"];
    environment.etc."nextcloud-admin-pass".text = "";
    services.nextcloud = {
      enable = true;
      #hostName = "10.66.0.153";#myHost;
      config.adminpassFile = "/etc/nextcloud-admin-pass";
      config.dbtype = "pgsql";
      database.createLocally = true;

      hostName = "10.66.0.153/nextcloud";
      settings.trusted_domains = ["10.66.0.*"];
      home = "/mnt/Nextcloud";
      #https = true;
      #extraApps = {
        #  inherit (config.services.nextcloud.package.packages.apps) news contacts calendar tasks;
        #};
      #extraAppsEnable = true;
    };

  #services.nginx.virtualHosts.${config.services.nextcloud.hostName} = {
  #  forceSSL = true;
  #  enableACME = true;
  #};

  #security.acme = {
  #  acceptTerms = true;   
  #  certs = { 
  #    ${config.services.nextcloud.hostName}.email = "nbrooker@proton.me";
  #  }; 
  #};    
}

/*{ config, lib, specialArgs, ... }:
  
net
  # Pull the host name from the special args we passed above
  myHost = specialArgs.hostName;
in
{
  # Example: put the host name into a custom fact
  environment.etc."my-hostname".text = "This machine is ${myHost}\n";

  # Or use it to conditionally enable something
  services.someService.enable = lib.mkIf (myHost == "attlerock") true;
}*/