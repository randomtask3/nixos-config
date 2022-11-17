# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      /home/nick/nixos/networking.nix
      /home/nick/nixos/bootloader.nix
      /home/nick/nixos/dm-de-wm.nix
      /home/nick/nixos/filesystems.nix
      /home/nick/nixos/users.nix
      /home/nick/nixos/packages.nix
      /home/nick/nixos/sound.nix
      # /home/nick/nixos/virtualization.nix
    ];

  boot.kernelPackages = pkgs.linuxPackages_latest;
  # hardware.opengl.enable = true;
  # hardware.opengl.extraPackages32 = with pkgs.pkgsi686Linux; [ libva ];
  # hardware.opengl.setLdLibraryPath = true;

  # Set your time zone.
  time.timeZone = "America/Montreal";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
    # useXkbConfig = true; # use xkbOptions in tty.
  };

  services.xserver = {
    # Configure keymap in X11
    layout = "us";
    # xkbOptions = {
      # "eurosign:e";
      # "caps:escape" # map caps to escape.
    # };
    # libinput.enable = true; # Enable touchpad support (enabled default in most desktopManager). 
  };
  # services.printing.enable = true; # Enable CUPS to print documents.
  
  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?

}
