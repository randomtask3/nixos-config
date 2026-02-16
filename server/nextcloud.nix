{ self, 
  config, 
  lib, 
  pkgs,
  specialArgs,
  ... 
}:{

let
  # Pull the host name from the special args we passed above
  myHost = specialArgs.hostName;
in
{
#environment.etc."nextcloud-admin-pass".text = "PWD";
services.nextcloud = {
  enable = true;
  hostName = myHost;
  config.adminpassFile = "/etc/nextcloud-admin-pass";
  config.dbtype = "pgsql";
  extraApps = {
    inherit (config.services.nextcloud.package.packages.apps) news contacts calendar tasks;
  };
  extraAppsEnable = true;
};
}

}

/*{ config, lib, specialArgs, ... }:

let
  # Pull the host name from the special args we passed above
  myHost = specialArgs.hostName;
in
{
  # Example: put the host name into a custom fact
  environment.etc."my-hostname".text = "This machine is ${myHost}\n";

  # Or use it to conditionally enable something
  services.someService.enable = lib.mkIf (myHost == "attlerock") true;
}*/