services.homepage-dashboard = {
  enable = true;

  listenPort = 3004;
  openFirewall = true;

  allowedHosts = "192.168.1.100:3000";

  settings = {
    title = "Home Server";
    theme = "dark";
    color = "slate";

    layout = {
      "Network" = {
        style = "columns";
        columns = 3;
      };

      "Services" = {
        style = "columns";
        columns = 3;
      };
    };
  };

  bookmarks = [
    {
      "Network" = [
        {
          "TP-Link Router" = [
            {
              abbr = "TP";
              href = "http://192.168.1.1";
            }
          ];
        }
      ];
    }
  ];

  services = [
    {
      "Network" = [
        {
          "AdGuard Home" = {
            href = "http://192.168.1.100:3002";
            description = "DNS & Ad Blocking";
            icon = "adguard-home.png";
          };
        }

        {
          "Router" = {
            href = "http://192.168.1.1";
            description = "TP-Link AX3000";
            icon = "router.png";
          };
        }
      ];
    }

    {
      "Services" = [
        {
          "Immich" = {
            href = "http://192.168.1.100:2283";
            description = "Photos & Videos";
            icon = "immich.png";
          };
        }

        {
          "Jellyfin" = {
            href = "http://192.168.1.100:8096";
            description = "Media Server";
            icon = "jellyfin.png";
          };
        }

        {
          "PS2 OPL" = {
            href = "smb://192.168.1.100";
            description = "PS2 Game Share";
            icon = "playstation.png";
          };
        }
      ];
    }
  ];

  widgets = [
    {
      resources = {
        cpu = true;
        memory = true;
        disk = "/";
      };
    }

    {
      datetime = {
        format = "yyyy-MM-dd HH:mm";
      };
    }
  ];
};