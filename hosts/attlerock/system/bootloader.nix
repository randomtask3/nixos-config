{ config,
  pkgs,
  pkgs-stable,
  ...
}:{

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

}
