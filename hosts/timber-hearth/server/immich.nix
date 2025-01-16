{ config, pkgs, ... }:
{
  services.immich = {
    enable = true;
    port = 2283;
  };

}
