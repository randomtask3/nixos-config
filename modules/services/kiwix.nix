{
  services.kiwix-serve = {
    enable = true;

    port = 8081;
    address = "0.0.0.0";

    libraryPath = "/srv/kiwix/library.xml";
    openFirewall = true;
  };
}