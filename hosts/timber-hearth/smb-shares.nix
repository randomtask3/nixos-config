{ config,
  lib,
  ... 
}:{
  services.samba = {
    settings = {
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
}
