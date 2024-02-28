{ config, pkgs, ... }:

{
  # Define a new environment for Emacs
  environment.systemPackages = with pkgs; [
    emacs
    # Additional Emacs packages can be added here
    auctex
    magit
  ];

  # Optional: Set the Emacs configuration file
  environment.variables = {
    EMACS_LOAD_PATH = "/path/to/your/emacs/config";
  };
}