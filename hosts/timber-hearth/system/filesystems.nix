{ pkgs,
  ...
}:{
  fileSystems."/home/nick/Media/hdd1-8tb" = {
    device = "/dev/disk/by-label/Red";
    fsType = "btrfs";
    options = [ "rw" "nofail" ];
  };
  fileSystems."/home/nick/Media/hdd2-4tb" = {
    device = "/dev/disk/by-label/Blue4T";
    fsType = "btrfs";
    options = [ "rw" "nofail" ];
  };
  fileSystems."/home/nick/Media/hdd3-2tb" = {
    device = "/dev/disk/by-label/Seagate-2TB";
    fsType = "ext4";
    options = [ "rw" "nofail" ];
  };
  fileSystems."/home/nick/Media/ssd1-1tb" = {
    device = "/dev/disk/by-label/Blue_SSD";
    fsType = "ext4";
    options = [ "rw" "nofail" ];
  };
  fileSystems."/home/nick/Media/ssd2-1tb" = {
    device = "/dev/disk/by-label/Crucial-1TB";
    fsType = "ext4";
    options = [ "rw" "nofail" ];
  };


  ## Bind mounts
  fileSystems."/srv/jellyfin/hdd1" = {
    device = "/home/nick/Media/hdd1-8tb/Media";
    options = [ "bind" "nofail" ];
  };
  fileSystems."/srv/jellyfin/hdd2" = {
    device = "/home/nick/Media/hdd2-4tb/Media";
    options = [ "bind" "nofail" ];
  };
  fileSystems."/srv/jellyfin/hdd3" = {
    device = "/home/nick/Media/hdd3-2tb/Media";
    options = [ "bind" "nofail" ];
  };
  fileSystems."/srv/jellyfin/data" = {
    device = "/home/nick/Media/hdd1-8tb/Jellyfin";
    options = [ "bind" "nofail" ];
  };
  fileSystems."/srv/nextcloud" = {
    device = "/home/nick/Media/hdd1-8tb/Nextcloud";
    options = [ "bind" "nofail" ];
  };
  fileSystems."/srv/immich/Pitcures" = {
    device = "/home/nick/Media/hdd1-8tb/Pictures";
    options = [ "bind" "nofail" ];
  };
  fileSystems."/srv/immich/data" = {
    device = "/home/nick/Media/hdd1-8tb/Immich";
    options = [ "bind" "nofail" ];
  };
  fileSystems."/srv/samba/share/NC-Home" = {
    device = "/home/nick/Media";
    options = [ "bind" "nofail" ];
  };
  

  environment.systemPackages = with pkgs; [
    hd-idle
  ];
  #systemd.services.hd-idle = {
    #description = "External HD spin down daemon";
    #wantedBy = [ "multi-user.target" ];
    #serviceConfig = {
    #  Type = "forking";
    #  ExecStart = "${pkgs.hd-idle}/bin/hd-idle -i 0 -a sda -i 600 -a sdb -i 600 -a sdd -i 600";
    #};
  #};
} 
