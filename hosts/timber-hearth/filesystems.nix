{
  fileSystems."/home/nick/Media" = {
    device = "/dev/vg-Data/lv-Data";
    fsType = "btrfs";
    options = [ "rw" ];
  };
  #fileSystems."/home/nick/Games" = {
  #  device = "/dev/vg-NixGuixSUSE/lv-NixGuixSUSE-data";
  #  fsType = "btrfs";
  #  options = [ "rw" ];
  #};
} 
