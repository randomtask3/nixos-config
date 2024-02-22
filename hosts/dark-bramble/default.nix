{
  imports = [
    ./hardware-configuration.nix
    ./nvidia.nix
    ./packages.nix
    ../../modules/system
    ../../scripts
  ];
  networking.hostName = "dark-bramble"; # Define your hostname.
  boot.supportedFilesystems = [ "ntfs" ];
  system.stateVersion = "23.11";
}