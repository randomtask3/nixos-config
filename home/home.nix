{ config, 
  pkgs, 
  ... 
}:{
  programs.home-manager.enable = true;
  home.stateVersion = "23.11";
  home.username = "nick";
  home.homeDirectory = "/home/nick";

  home.packages = with pkgs; [
    #
  ];

  programs.kitty = {
    enable = true;
    catppuccin.enable = true;
  };

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # basic configuration of git, please change to your own
  #programs.git = {
  #  enable = true;
  #  userName = "Ryan Yin";
  #  userEmail = "xiaoyin_c@qq.com";
  #};

  # starship - an customizable prompt for any shell
  #programs.starship = {
  #  enable = true;
  #  # custom settings
  #  settings = {
  #    add_newline = false;
  #    aws.disabled = true;
  #    gcloud.disabled = true;
  #    line_break.disabled = true;
  #  };
  #};

  #programs.bash = {
  #  enable = true;
  #  enableCompletion = true;
  #  # TODO add your cusotm bashrc here
  #  bashrcExtra = ''
  #    export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
  #  '';
  #
  #  # set some aliases, feel free to add more or remove some
  #  shellAliases = {
  #    k = "kubectl";
  #    urldecode = "python3 -c 'import sys, urllib.parse as ul; print(ul.unquote_plus(sys.stdin.read()))'";
  #    urlencode = "python3 -c 'import sys, urllib.parse as ul; print(ul.quote_plus(sys.stdin.read()))'";
  #  };
  #};
}