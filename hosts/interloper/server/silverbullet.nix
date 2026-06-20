{ pkgs,
  ...
}:{

  services.silverbullet = {
    enable = true;
    spaceDir = "/srv/silverbullet";
    listenAddress = "10.66.0.10";
    listenPort = 3000;
    user = "nick";
    openFirewall = true;
    
  };
  environment.systemPackages = [
    pkgs.silverbullet
  ];
}
