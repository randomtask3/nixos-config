{ config,
  pkgs,
  pkgs-stable,
  ... 
}:
let
  chicago95 = pkgs.stdenvNoCC.mkDerivation {
    pname = "chicago95";
    version = "git";

    src = pkgs.fetchFromGitHub {
      owner = "grassmunk";
      repo = "Chicago95";
      rev = "master";
      hash = "sha256-Qtk9cmWlppZA527VFFi64IuV4eDSkYh4YOeK5/TPmkw=";
    };

    installPhase = ''
      mkdir -p $out/share/themes
      mkdir -p $out/share/icons

      cp -r Theme/Chicago95 $out/share/themes/
      cp -r Icons/* $out/share/icons/
    '';
  };

in
{
  environment.systemPackages = [
    chicago95
  ];
}