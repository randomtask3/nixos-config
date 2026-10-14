{ config, pkgs, ... }:

let
  quiver-launcher = pkgs.appimageTools.wrapType2 {
    name = "quiver-launcher";
    # Pull the exact AppImage/Linux binary release directly from the repository
    src = pkgs.fetchurl {
      url = "https://github.com/tgeorgiadis/quiver-launcher"; # Adjust version if needed
      sha256 = "PLACEHOLDER_SHA256"; # Update with the correct file hash
    };
    
    # Ensure it maps all core graphic dependencies needed for the UI and compiled games
    extraPkgs = pkgs: with pkgs; [
      libGL
      xorg.libX11
      xorg.libXcursor
      xorg.libXrandr
      xorg.libXinerama
      alsa-lib
    ];
  };
in
{
  environment.systemPackages = [
    quiver-launcher
  ];
}