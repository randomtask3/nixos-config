{ pkgs,
...
}:{
  services.uptime-kuma = {
    enable = true;
    package = pkgs.uptime-kuma;
    #port = 8081;
    #address = "10.66.0.10";

    #libraryPath = "/srv/kiwix/library.xml";
    #openFirewall = true;
  };
  environment.systemPackages = [
    
  ];
}