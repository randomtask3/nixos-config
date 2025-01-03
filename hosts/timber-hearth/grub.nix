{
  boot.loader.grub.extraEntries = ''
    #menuentry "Windows 10" --class guix --class os {
    #  insmod part_gpt
    #  insmod ext2
    #  insmod fat
    #  set root=(hd3,0)
    #  chainloader /EFI/Boot/bootx64.efi
    #}
    #menuentry "openSUSE" --class opensuse --class os {
    #  insmod part_gpt
    #  insmod ext2
    #  insmod fat
    #  set root=(hd1,2)
    #  chainloader /efi/opensuse/grubx64.efi
    #}
  '';
}
