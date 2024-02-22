{
  imports =
    [
      ./hardware-configuration.nix
      ./filesystems.nix
      ./packages.nix
      ../../modules/system
      ../../scripts
    ];
  networking.hostName = "timber-hearth";
  system.stateVersion = "23.11";
}