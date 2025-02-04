{ config, pkgs, ... }:
{
  services.navidrome = {
    enable = true;
    #port = 2283;
    openFirewall = true;
    #host = "10.66.0.10";
    #user = "nick" ;
    #group = "users";
    #mediaLocation = "/media/immich/Pictures"; #Doesn't work
  };
  environment.systemPackages = with pkgs; [
    navidrome
  ];
}