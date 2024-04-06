{ config,
  lib,
  ... 
}:{
  imports = [
    ./samba.nix
    #./nextcloud.nix
    #./minecraft_server.nix
    #./virtualiztion.nix
  ];
}