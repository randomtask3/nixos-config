{ config,
  pkgs,
  pkgs-stable,
  ... 
}:
let
  fallout-grub-theme = pkgs.fetchFromGitHub {
    owner = "shvchk";
    repo = "fallout-grub-theme";
    rev = "master";
    hash = "sha256-dNRLM9tQjWOyi3s4Q2er5Xn2bpG/yQ/D/+F/lfYXrs8=";
  };
in
{
  boot.loader.grub = {
    theme = fallout-grub-theme;
  };
}