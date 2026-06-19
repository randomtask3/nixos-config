{ pkgs,
  ...
}:{

  services.mealie = {
    enable = true;
    #dataDir = "/srv/mealie";
    #host = "10.66.0.10";
    port = 9925;
    settings = {
      #ALLOW_SINUP = "true";
      #BASE_URL = "http://10.66.0.10:9925";
    };
  };
  environment.systemPackages = [
    pkgs.mealie
  ];
}
