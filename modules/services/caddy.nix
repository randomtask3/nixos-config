{
  services.caddy = {
    enable = true;

    virtualHosts = {
      "silverbullet.home.arpa" = {
        extraConfig = ''
          tls internal
          reverse_proxy 127.0.0.1:3001
        '';
      };

      #"kiwix.home.arpa" = {
      #  extraConfig = ''
      #    tls internal
      #    reverse_proxy 127.0.0.1:8081
      #  '';
      #};

      #"paperless.home.arpa" = {
      #  extraConfig = ''
      #    tls internal
      #    reverse_proxy 127.0.0.1:28981
      #  '';
      #};

      #"karakeep.home.arpa" = {
      #  extraConfig = ''
      #    tls internal
      #    reverse_proxy 127.0.0.1:3000
      #  '';
      #};

      #"openwebui.home.arpa" = {
      #  extraConfig = ''
      #    tls internal
      #    reverse_proxy 127.0.0.1:8080
      #  '';
      #};

      #"nextcloud.home.arpa" = {
      #  extraConfig = ''
      #    tls internal
      #    reverse_proxy 127.0.0.1:80
      #  '';
      #};
    };

    httpPort = 8088;
    httpsPort = 8443;
  };

  networking.firewall.allowedTCPPorts = [
    8088
    8443
  ];
}