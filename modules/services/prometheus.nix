{
  services.prometheus = {
    enable = true;
    port = 9090;

    globalConfig.scrape_interval = "15s";

    scrapeConfigs = [
      {
        job_name = "node";

        static_configs = [
          {
            targets = [ "127.0.0.1:9100" ];
            labels.host = "timber-hearth";
          }

          {
            targets = [ "10.66.0.11:9100" ];
            labels.host = "interloper";
          }
        ];
      }
    ];
  };

  networking.firewall.allowedTCPPorts = [
    9090
  ];
}