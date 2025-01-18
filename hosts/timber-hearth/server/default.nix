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
    #./nextcloud.nix
    #./minecraft_server.nix
    ./server_packages.nix
    ./tailscale.nix
    #./virtualiztion.nix
  ];
}
