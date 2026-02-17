{ config,
  lib,
  ... 
}:{
  services.samba = {
    enable = true;
    openFirewall = true;
    settings = {
      glabal = {
        "security" = "user";
      };
      "NC-Home" = {
        "path" = "/home/nick/Media";
        "browseable" = "yes";
        "read only" = "no";
        "guest ok" = "no";
        "valid_user" = "nick";
        #"force user" = "nobody";
        #"available" = "yes";
        #"public" = "yes";
      };
    };
  };

  services.samba-wsdd = {
    enable = true;
    openFirewall = true;
  };
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
