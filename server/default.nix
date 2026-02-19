{ config,
  lib,
  ... 
}:{
  imports = [
    ./firewall.nix
    #./home-assistant.nix
    #./immich.nix
    #./jellyfin.nix
    #./minecraft_server.nix
    #./navidrome.nix
    #./nextcloud.nix
    #./samba.nix
    #./server_packages.nix
    #./sunshine.nix
    #./tailscale.nix
    #./virtualiztion.nix
  ];

  # Add Sonarr, Radarr, AudiobookShelf, Jellyseer
  # Mealie recipe selfhosted
  # Adguard home for firewall
  # Selfhost git server
}
