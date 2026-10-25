{
  services.prometheus.exporters.node = {
    enable = true;
    port = 9100;

    enabledCollectors = [
      "hwmon"
    ];

    openFirewall = true;
  };
}