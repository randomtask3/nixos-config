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
    };
  };

  services.samba-wsdd = {
    enable = true;
    openFirewall = true;
  };
}
