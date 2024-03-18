{ pkgs,
  ...
}:{
  environment.etc."nextcloud-admin-pass".text = "PWD";
  services.nextcloud = {
    enable = true;
    package = pkgs.nextcloud28;
    hostName = "localhost";
    config.adminpassFile = "/etc/nextcloud-admin-pass";

    extraApps = {
      inherit (config.services.nextcloud.package.packages.apps) news contacts calendar tasks;
      memories = pkgs.fetchNextcloudApp {
          sha256 = "sha256-Xr1SRSmXo2r8yOGuoMyoXhD0oPVm/0/ISHlmNZpJYsg=";
          url = "https://github.com/pulsejet/memories/releases/download/v6.2.2/memories.tar.gz";
          license = "agpl3";
      };
    };
    extraAppsEnable = true;
  };
}