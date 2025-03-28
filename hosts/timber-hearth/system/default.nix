{
  imports = [
    #./amd.nix
    #./desktop.nix
    ./hardware-configuration.nix
    ./filesystems.nix
    ./bootloader.nix
    ./networking.nix
  ];
}
