{
  boot.supportedFilesystems = [ "ntfs" ];

  fileSystems."/home/nick/mount/Blue" = {
    device = "/dev/disk/by-label/Blue";
    fsType = "ext4";
    # options = [ "rw" "udi=1000"];
  };

  fileSystems."/home/nick/Games" = {
    device = "/dev/disk/by-label/Games";
    fsType = "ext4";
    # options = [ "rw" "udi=1000"];
  };

  fileSystems."/home/nick/mount/Plex" = { 
    device = "/dev/disk/by-label/Plex";
    # fstype = "fuseblk";
    options = [ "rw" "uid=1000" "gid=1000" ];
  };

  fileSystems."/home/nick/mount/MyBook" = { 
    device = "/dev/disk/by-label/MyBook";
    # fstype = "exfatprogs";
    options = [ "rw" "nofail" "uid=1000" "gid=1000" ];
  };
} 
