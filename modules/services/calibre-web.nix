{
  config,
  pkgs,
  lib,
  ...
}:{
  services.calibre-web = {
    enable = true;
    calibrePackage = pkgs.calibre;
    package = pkgs.calibre-web;
    openFirewall = true;

    listen = {
      ip = "0.0.0.0";
      port = 8083;
    };
    user = "nick";
    group = "users";

    options = {
      enableBookConversion = true;
      enableBookUploading = true;
      calibreLibrary = "/srv/calibre/library";
    };
    dataDir = "/srv/calibre";
  };

  environment.systemPackages = with pkgs; [
    calibre
    # sudo -u nick calibredb list --with-library /srv/calibre/library
    # sudo -u nick calibredb add /path/to/comic.cbz --with-library /srv/calibre/library
  ];

  networking.firewall.allowedTCPPorts = [
    8083
  ];
}