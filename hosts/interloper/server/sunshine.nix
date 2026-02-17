{ config, pkgs, ... }:
{
  services.sunshine = {
    enable = true;
    openFirewall = true;
    settings = {
        port = 47990;
        #Address = "10.66.0.10";
    };
    #host = "10.66.0.10";
    #user = "nick" ;
    #group = "users";
    #mediaLocation = "/media/immich/Pictures"; #Doesn't work
  };
  environment.systemPackages = with pkgs; [
    sunshine
  ];
}