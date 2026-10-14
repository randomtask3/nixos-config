{ config,
  pkgs,
  pkgs-stable,
  ... 
}:
let
   nashville96 = pkgs.stdenv.mkDerivation {
    pname = "nashville96";
    version = "unstable";

    src = pkgs.fetchFromGitHub {
      owner = "donfaustinocortizone";
      repo = "Nashville96";
      rev = "main";
      hash = "sha256-WwygjNutNYxvdl+WoWNk3nxNFFRmdrMhcqr0pPtbGfU=";
    };

    installPhase = ''
      mkdir -p $out/share/themes
      cp -r Themes/* $out/share/themes/
    '';
  };

in
{
  environment.systemPackages = [
    nashville96
  ];

}