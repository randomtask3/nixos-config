{ config,
  lib,
  ... 
}:{
  imports = [
    ./firewall.nix
    ./forgejo.nix
    ./home-assistant.nix
    ./mealie.nix
    #./nginx.nix
    ./ollama.nix
    ./server_packages.nix
    ./syncthing.nix
    #./tailscale.nix
    #./virtualiztion.nix
  ];

  # Add Sonarr, Radarr, AudiobookShelf, Jellyseer
  # Mealie recipe selfhosted
  # Adguard home for firewall
  # Selfhost git server
}
