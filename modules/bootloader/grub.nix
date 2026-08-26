{
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    grub = {
      efiSupport = true;
      device = "nodev";
      #useOSProber = true;
      extraEntries = ''
        #menuentry "Windows 10" --class guix --class os {
        #  insmod part_gpt
        #  insmod ext2
        #  insmod fat
        #  set root=(hd3,0)
        #  chainloader /EFI/Boot/bootx64.efi
        #}
      '';
    };
  };
}
