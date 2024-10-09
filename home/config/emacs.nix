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

      (load-theme 'deeper-blue)
      (setq standard-indent 2)

      ;; Initialize package sources
      (require 'package)

      (setq package-archives '(("melpa" , "https://melpa.org/packages/")
                               ("org" , "https://orgmode.org/elpa/")
                               ("elpa" , "https://elpa.gnu.org/packages")))

      (package-initialize)
      (unless package-archive-contents
       (package-refresh-contents))

      ;; Initialize use-package on non-Linux platforms
      (unless (package-installed-p 'use-package)
          (package-install 'use-package))

      (require 'use-package)
      (setq use-package-always-ensure t)
    '';
  };
}
