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
      };

      "PS2SMB" = {
        "path" = "/home/nick/Media/disk2/Games/Emulators/PS2";
        "browseable" = "yes";
        "read only" = "no";
        "guest ok" = "yes";
        "create mask" = "0644";
        "directory mask" = "0755";
        "force user" = "username";
        "force group" = "groupname";
      };
    };
  };

  services.samba-wsdd = {
    enable = true;
    openFirewall = true;
  };
}
