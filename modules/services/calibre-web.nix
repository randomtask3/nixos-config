{
  services.calibre-web = {
    enable = true;
    calibrePackage = pkgs.calibre;
    package = pkgs.calibre-web;

    listen = {
      ip = "0.0.0.0";
      port = 8083;
    };
    user = "nick";
    group = "users";

    options = {
      enableBookConversion = true;
      calibreLibrary = "/srv/calibre/library";
    };
    dataDir = "/srv/calibre";
  };

  networking.firewall.allowedTCPPorts = [
    8083
  ];
}