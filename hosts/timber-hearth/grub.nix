{
  boot.loader.grub.extraEntries = ''
    menuentry "Guix" --class guix --class os {
      insmod part_gpt
      insmod ext2
      insmod fat
      set root=(hd0,1)
      chainloader /efi/Guix/grubx64.efi
    }
    menuentry "openSUSE" --class opensuse --class os {
      insmod part_gpt
      insmod ext2
      insmod fat
      set root=(hd1,2)
      chainloader /efi/opensuse/grubx64.efi
    }
  '';
}