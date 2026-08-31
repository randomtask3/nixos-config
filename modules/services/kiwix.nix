{
  services.kiwix-serve = {
    enable = true;

    port = 8081;
    address = "10.66.0.10";

    libraryPath = "/srv/kiwix/library.xml";
    openFirewall = true;
  };
  environment.systemPackages = [
    pkgs.kiwix-tools
  ];
}