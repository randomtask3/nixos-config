{ config, pkgs, ... }:
{
  services.jellyfin = {
    enable = true;
    openFirewall = true;
    user="nick";
    #logDir = "/srv/jellfin/data/log";
    cacheDir = "/srv/jellyfin/data/cache";
    dataDir = "/srv/jellyfin/data";
    #configDir = "/srv/jellfin/data/config";
  };
  environment.systemPackages = with pkgs; [
    jellyfin
    jellyfin-web
    jellyfin-ffmpeg
  ];
}
