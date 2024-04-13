{ config,
  lib,
  ... 
}:{
  imports = [
    ./firewall.nix
    ./jellyfin.nix
    ./samba.nix
    ./nextcloud.nix
    #./minecraft_server.nix
    ./server_packages.nix
    #./virtualiztion.nix
  ];
}