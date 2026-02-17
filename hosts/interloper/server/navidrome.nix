{ config, pkgs, ... }:
{
  services.navidrome = {
    enable = true;
    openFirewall = true;
    settings = {
        Port = 4533;
        Address = "10.66.0.10";
        MusicFolder = "/media/disk1/Music";
        #EnableInsightsCollector = true;
    };
    #host = "10.66.0.10";
    #user = "nick" ;
    group = "users";
  };
  environment.systemPackages = with pkgs; [
    navidrome
  ];
}