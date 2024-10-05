{ pkgs,
  catppuccin,
  ...
}:{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs;
    extraConfig = ''
      (setq inhibit-startup-message t)

      (scroll-bar-mode -1)   ; Disable visible scollbar
      (tool-bar-mode -1)     ; Disable the toolbar
      (tooltip-mode -1)      ; Disable tooltips
      (set-fringe-mode 10)   ; Give some breathing room

      (menu-bar-mode 1)     ; Disable the menu bar

      (setq standard-indent 2)
    '';
  };
}
