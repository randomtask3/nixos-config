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
  ];

  networking.firewall.allowedTCPPorts = [
    8083
  ];
}