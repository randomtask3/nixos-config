{
  imports = [
    ./hardware-configuration.nix
    ./modules
    ../../common
  ];
  networking.hostName = "timber-hearth";
  system.stateVersion = "23.11";
}