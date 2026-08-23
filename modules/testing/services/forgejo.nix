{ config, lib, ... }:

let
  cfg = config.my.services.forgejo;
in
{
  options.my.services.forgejo.dataDir = lib.mkOption {
    type = lib.types.path;
    default = "/srv/forgejo";
  };

  config = lib.mkIf cfg.enable {
    services.forgejo = {
      enable = true;
      stateDir = cfg.dataDir;

      database.type = "sqlite3";

      settings = {
        server = {
          DOMAIN = "10.66.0.11";
          ROOT_URL = "http://10.66.0.11:3000/";
          HTTP_PORT = 3000;
        };

        service.DISABLE_REGISTRATION = true;
        actions.ENABLED = true;
      };
    };
  };
}