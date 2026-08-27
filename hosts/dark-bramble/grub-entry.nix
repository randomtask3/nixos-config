{ config,
  lib,
  ... 
}:{
  boot.loader.grub.extraEntries = ''
    menuentry "Guix" --class guix {
      insmod part_gpt
      insmod fat
      search --no-floppy --fs-uuid --set=root 278D-9D13
      chainloader /EFI/Guix/grubx64.efi
    }
  '';
}
