{
  imports =
    [
      ./hardware-configuration.nix
      ./filesystems.nix
      ./packages.nix
      ../../modules/system
      #../../modules/programs
      ../../scripts
    ];
  networking.hostName = "timber-hearth";
  system.stateVersion = "23.11";
}