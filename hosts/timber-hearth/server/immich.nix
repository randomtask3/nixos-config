{ config, pkgs, ... }:
{
  services.immich = {
    enable = true;
    port = 2283;
    openFirewall = true;
    host = "10.66.0.10";
    #user = "nick" ;
    #group = "users";
    mediaLocation = "/srv/immich/data"; #Doesn't work
  };
  environment.systemPackages = with pkgs; [
    immich
    immich-cli
    immich-machine-learning
  ];
}
