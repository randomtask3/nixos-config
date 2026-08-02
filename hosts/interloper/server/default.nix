{ config,
  lib,
  ... 
}:{
  imports = [
    ./firewall.nix
    ./home-assistant.nix
    ./mealie.nix
    ./nextcloud.nix
    #./nginx.nix
    ./samba.nix
    ./server_packages.nix
    #./tailscale.nix
    #./virtualiztion.nix
  ];

  # Add Sonarr, Radarr, AudiobookShelf, Jellyseer
  # Mealie recipe selfhosted
  # Adguard home for firewall
  # Selfhost git server
}
