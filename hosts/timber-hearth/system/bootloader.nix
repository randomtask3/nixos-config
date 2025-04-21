{
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    grub = {
      efiSupport = true;
      device = "nodev";
      useOSProber = true;
      extraEntries = ''
        menuentry "GNU GUIX" --class guix --class os {
          insmod part_gpt
          insmod ext2
          insmod fat
          set root=(hd3,0)
          chainloader /EFI/Boot/bootx64.efi
        }
        #menuentry "openSUSE" --class opensuse --class os {
        #  insmod part_gpt
        #  insmod ext2
        #  insmod fat
        #  set root=(hd1,2)
        #  chainloader /efi/opensuse/grubx64.efi
        #}
      '';
    };
  };
}
