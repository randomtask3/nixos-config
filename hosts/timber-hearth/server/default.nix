{ config,
  lib,
  ... 
}:{
  imports = [
    ./firewall.nix
    ./jellyfin.nix
    ./samba.nix
    ./immich.nix
    ./home-assistant.nix
    ./navidrome.nix
    #./nextcloud.nix
    ./openvpn.nix
    #./minecraft_server.nix
    ./server_packages.nix
    ./sunshine.nix
    ./tailscale.nix
    #./virtualiztion.nix
  ];

  # Add Sonarr, Radarr, AudiobookShelf, Jellyseer
  # Mealie recipe selfhosted
  # Adguard home for firewall
  # Selfhost git server
}
