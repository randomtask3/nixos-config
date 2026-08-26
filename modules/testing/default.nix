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
    ./syncthing.nix
    #./tailscale.nix
    #./virtualiztion.nix
  ];

  # Add Sonarr, Radarr, AudiobookShelf, Jellyseer
  # Mealie recipe selfhosted
  # Adguard home for firewall
  # Selfhost git server
}
