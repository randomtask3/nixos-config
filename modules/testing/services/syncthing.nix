{ config, pkgs, ... }:
{
  services.syncthing = {
    enable = true;

    user = "nick";
    group = "users";

    dataDir = "/srv/syncthing";

    openDefaultPorts = true;

    settings = {
      folders = {
        documents = {
          path = "/srv/syncthing/documents";
          id = "documents";
        };

        backups = {
          path = "/srv/syncthing/backups";
          id = "projects";
        };
      };
    };

  };
  environment.systemPackages = with pkgs; [
    
  ];
}
