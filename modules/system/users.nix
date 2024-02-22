{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.nick = {
    isNormalUser = true;
    initialPassword = "pass";
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };
}