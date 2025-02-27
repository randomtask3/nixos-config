{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  fileSystems."/home/nick/Media" = {
    device = "//10.6.0.10/NC-Home";
    fsType = "cifs";
    options = let
      # this line prevents hanging on network split
      automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

    in ["${automount_opts},credentials=/etc/nixos/smb-secrets,udi=1000,gid=100"];
  };
}