{
  config,
  pkgs,
  lib,
  ...
}:{
  services.syncthing = {
    enable = true;

    dataDir = "/srv/syncthing";

    # Open the usual Syncthing ports:
    # 22000/tcp and 21027/udp
    # This does NOT open the web GUI port.
    openDefaultPorts = true;

    # Recommended if syncing folders under /home/<user>
    #user = "alice";
    #group = "alice";

    # Web UI, default is localhost only
    guiAddress = "0.0.0.0:8384";
  };

  networking.firewall.allowedTCPPorts = [ 8384 ];
}