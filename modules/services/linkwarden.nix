{
  config,
  pkgs,
  lib,
  ...
}:{
  services.linkwarden = {
    enable = true;

    storageLocation = "/srv/linkwarden";
    cacheLocation = "/srv/linkwarden";
    package = pkgs.linkwarden;
    openFirewall = true;
    user = "nick";
    group = "users";
    port = 3003;

    host = "10.66.0.10";
  };

  networking.firewall.allowedTCPPorts = [ 3003 ];
}