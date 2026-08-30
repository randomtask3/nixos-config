{
  services.paperless = {
    enable = true;

    address = "0.0.0.0";
    port = 28981;

    dataDir = "/srv/paperless";

    settings = {
      PAPERLESS_OCR_LANGUAGE = "eng";
      PAPERLESS_TIME_ZONE = "America/Toronto";
    };
  };

  networking.firewall.allowedTCPPorts = [ 28981 ];
}