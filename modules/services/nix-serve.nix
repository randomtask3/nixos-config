{ config, ... }:

{
  services.nix-serve = {
    enable = true;
    secretKeyFile = "/var/secrets/nix-cache-priv-key";
    port = 5000;
    bindAddress = "0.0.0.0";
  };

  networking.firewall.allowedTCPPorts = [ 5000 ];
}