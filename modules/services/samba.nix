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
        "path" = "/srv/samba/share/NC-Home";
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
