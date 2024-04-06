{ config,
  lib,
  ... 
}:{
  services.samba = {
    enable = true;

    # This adds to the [global] section:
    extraConfig = ''
      browseable = yes
      smb encrypt = required
    '';

    shares = {
      NC-Home = {
        path = "/home/nick/Media";
        browseable = "no";  # note: each home will be browseable; the "homes" share will not.
        "read only" = "no";
        "guest ok" = "no";
        "valid_user" = "nick";
      };
    };
  };

  services.samba-wsdd = {
    enable = true;
    openFirewall = true;
  };

  # Curiously, `services.samba` does not automatically open
  # the needed ports in the firewall.
  networking.firewall.allowedTCPPorts = [ 445 139 ];
  networking.firewall.allowedUDPPorts = [ 137 138 ];

  networking.firewall.enable = true;
  networking.firewall.allowPing = true;
}