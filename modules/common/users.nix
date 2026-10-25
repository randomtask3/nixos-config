{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.nick = {
    isNormalUser = true;
    initialPassword = "pass";
    extraGroups = [ "wheel" "networking" "nextcloud" "immich" "networkmanager"]; # Enable ‘sudo’ for the user.
  };
  users.groups.remotebuild = {};

  #users.users.remotebuild = {
  #  isNormalUser = true;
  #  group = "remotebuild";
  #  createHome = false;

  #  openssh.authorizedKeys.keyFiles = [
  #    ./remotebuild.pub
  #  ];
  #};

  #nix.settings.trusted-users = [
  #  "remotebuild"
  #];
}
