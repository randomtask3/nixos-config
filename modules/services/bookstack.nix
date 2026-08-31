{
  config,
  pkgs,
  lib,
  ...
}:{
  services.bookstack = {
    enable = true;

    dataDir = "/srv/bookstack";
    package = pkgs.bookstack;
    openDefaultPorts = true;
    user = "nick";
    group = "users";
    port = 8000;

    hostname = "10.66.0.10";
  };

  networking.firewall.allowedTCPPorts = [ 8000 ];
}