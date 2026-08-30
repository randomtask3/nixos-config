{ config,
  lib,
  ... 
}:{
  imports = [
    ./firewall.nix
    ./forgejo.nix
    ./home-assistant.nix
    ./mealie.nix
    ./nextcloud.nix
    #./nginx.nix
    ./ollama.nix
    #./tailscale.nix
    #./virtualiztion.nix
  ];

  # Add Sonarr, Radarr, AudiobookShelf, Jellyseer
  # Adguard home for firewall
  # Selfhost git server
  # Kiwix for offline wikipedia etc..
  # Hoarder 
  # Paperless-ngin
  # Silverbullet
}
