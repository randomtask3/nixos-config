{ pkgs,
  ...
}:{

  services.silverbullet = {
    enable = true;
    spaceDir = "/srv/silverbullet";
    #host = "10.66.0.10";
    #port = 9925;
    
  };
  #environment.systemPackages = [
  #  pkgs.mealie
  #];
}