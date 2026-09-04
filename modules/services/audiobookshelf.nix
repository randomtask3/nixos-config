{
  config,
  pkgs,
  lib,
  ...
}:{
  services.audiobookshelf = {
    enable = true;

    #dataDir = "/srv/audiobookshelf";
    package = pkgs.audiobookshelf;
    openFirewall = true;
    user = "nick";
    group = "users";
    port = 8000;

    host = "10.66.0.10";
  };

  networking.firewall.allowedTCPPorts = [ 8000 ];
}