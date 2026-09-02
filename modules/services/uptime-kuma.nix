{ pkgs,
...
}:{
  services.uptime-kuma = {
    enable = true;
    package = pkgs.uptime-kuma;

    settings = {
      HOST = "0.0.0.0";
      PORT = "3001";
    };
    #port = 8081;
    #address = "10.66.0.10";

    #libraryPath = "/srv/kiwix/library.xml";
    #openFirewall = true;
  };

  networking.firewall.allowedTCPPorts = [ 3001 ];

  environment.systemPackages = [
    
  ];
}