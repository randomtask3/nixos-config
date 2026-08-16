{ config, pkgs, ... }:
{
  services.ocis = {
    enable = true;
    #stateDir = 2283;
    #openFirewall = true;
    #host = "10.66.0.10";
    #user = "nick" ;
    #group = "users";
    stateDir = "/srv/owncloud";
  };
  environment.systemPackages = with pkgs; [
    
  ];
}
