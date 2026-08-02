{ config, pkgs, ... }:

{
  services.samba = {
    enable = true;
    # Enable SMB1 protocol (not recommended for security reasons)
    protocols = [ "SMB1" ];
    # Allow guest access (no user required)
    security = "user";
    extraConfig = ''
      [global]
      map to guest = Bad User
      guest account = nobody

      [share]
      path = /srv/samba/share
      browseable = yes
      writable = yes
      guest ok = yes
      create mask = 0777
      directory mask = 0777
    '';
  };

  # Ensure the shared directory exists
  system.activationScripts.createSambaShare = ''
    mkdir -p /srv/samba/share
    chmod 777 /srv/samba/share
  '';
}