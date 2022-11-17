{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.nick = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networking"]; # Enable ‘sudo’ for the user.
    # packages = with pkgs; [
      # firefox
      # thunderbird
    # ];
  };
} 
