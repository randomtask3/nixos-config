{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  fileSystems."/home/nick/Media" = {
    device = "//timber-hearth/NC-Home";
    fsType = "cifs";
    options = let
      # this line prevents hanging on network split
      automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

      in ["${automount_opts},credentials=/sec/smb-secrets,uid=1000"];
      #,uid=1000,rw,users
  };
}