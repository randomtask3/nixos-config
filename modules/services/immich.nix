{ config, pkgs, lib, ... }:
{
  services.immich = {
    enable = true;
    port = 2283;
    openFirewall = true;
    host = "10.66.0.10";
    user = "nick";
    group = "users";

    # PostgreSQL account
    database.user = "immich";
    mediaLocation = "/srv/immich/data";

    environment.DB_URL = lib.mkForce "postgresql://immich@/immich?host=/run/postgresql";
  };
  users.users.nick.extraGroups = [ "immich" ];
  environment.systemPackages = with pkgs; [
    immich
    immich-cli
    immich-machine-learning
  ];
  networking.firewall = {
    allowedTCPPorts = [ 
      2283
    ];
  };
}
