{ ... }:

{
  nix.distributedBuilds = true;

  nix.settings = {
    builders-use-substitutes = true;
    max-jobs = 0;
  };

  nix.buildMachines = [
    {
      hostName = "10.66.0.11";
      sshUser = "remotebuild";
      sshKey = "/root/.ssh/remotebuild";

      system = "x86_64-linux";
      protocol = "ssh-ng";

      maxJobs = 4;
      speedFactor = 2;
    }

    #{
    #  hostName = "10.66.0.12";
    #  sshUser = "remotebuild";
    #  sshKey = "/root/.ssh/remotebuild";

    #  system = "x86_64-linux";
    #  protocol = "ssh-ng";

    #  maxJobs = 2;
    #  speedFactor = 1;
    #}
  ];
}